#include "EchoDecoder.h"
#include <sndfile.h>
#include <iostream>
#include <cmath>
#include <algorithm>

EchoDecoder::EchoDecoder(double delay0, double delay1)
    : delayBit0(delay0), delayBit1(delay1) {}

bool EchoDecoder::decodeMessage(const std::string& inputWav, std::string& message, int messageLength) {
    std::vector<float> samples;
    int sampleRate, channels;

    if (!readWavFile(inputWav, samples, sampleRate, channels)) {
        std::cerr << "Failed to read input WAV file." << std::endl;
        return false;
    }

    int numBits = messageLength * 8;

    if (samples.size() < numBits * sampleRate * delayBit1 * channels) {
        std::cerr << "Audio file is too short to decode the message." << std::endl;
        return false;
    }

    std::vector<bool> bits = extractBits(samples, sampleRate, channels, numBits);
    message = bitsToMessage(bits);

    return true;
}

bool EchoDecoder::readWavFile(const std::string& filename, std::vector<float>& samples, int& sampleRate, int& channels) {
    SF_INFO sfInfo;
    SNDFILE* sndFile = sf_open(filename.c_str(), SFM_READ, &sfInfo);
    if (!sndFile) {
        std::cerr << "Error opening sound file: " << sf_strerror(NULL) << std::endl;
        return false;
    }

    sampleRate = sfInfo.samplerate;
    channels = sfInfo.channels;
    samples.resize(sfInfo.frames * channels);
    sf_read_float(sndFile, samples.data(), samples.size());
    sf_close(sndFile);

    return true;
}

std::vector<bool> EchoDecoder::extractBits(const std::vector<float>& samples, int sampleRate, int channels, int numBits) {
    std::vector<bool> bits;

    int delaySamples0 = static_cast<int>(delayBit0 * sampleRate);
    int delaySamples1 = static_cast<int>(delayBit1 * sampleRate);
    int samplesPerBit = static_cast<int>((delayBit0 + delayBit1) * sampleRate);
    int segmentSize = samplesPerBit * channels;

    for (int bitIdx = 0; bitIdx < numBits; ++bitIdx) {
        size_t startIdx = bitIdx * segmentSize;

        if (startIdx + segmentSize > samples.size()) {
            std::cerr << "Not enough samples to process bit " << bitIdx << std::endl;
            break;
        }

        double corr0 = 0.0;
        double corr1 = 0.0;

        for (size_t i = startIdx; i + std::max(delaySamples0, delaySamples1) < startIdx + segmentSize; i += channels) {
            corr0 += samples[i] * samples[i + delaySamples0 * channels];
            corr1 += samples[i] * samples[i + delaySamples1 * channels];
        }

        bits.push_back(corr1 > corr0);

        std::cout << "Bit " << bitIdx << ": corr0 = " << corr0 << ", corr1 = " << corr1 << ", Decided bit = " << bits.back() << std::endl;
    }

    return bits;
}




std::string EchoDecoder::bitsToMessage(const std::vector<bool>& bits) {
    std::string message;
    for (size_t i = 0; i < bits.size(); i += 8) {
        char c = 0;
        for (size_t j = 0; j < 8 && i + j < bits.size(); ++j) {
            c = (c << 1) | bits[i + j];
        }
        message += c;
    }
    return message;
}
