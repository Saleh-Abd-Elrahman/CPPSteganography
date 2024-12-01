#include "EchoEncoder.h"
#include <sndfile.h>
#include <iostream>
#include <cmath>

EchoEncoder::EchoEncoder(double delay0, double delay1, float decay)
    : delayBit0(delay0), delayBit1(delay1), decayFactor(decay) {}

bool EchoEncoder::encodeMessage(const std::string& inputWav, const std::string& outputWav, const std::string& message) {
    std::vector<float> samples;
    int sampleRate, channels;

    if (!readWavFile(inputWav, samples, sampleRate, channels)) {
        std::cerr << "Failed to read input WAV file." << std::endl;
        return false;
    }

    std::vector<bool> bits = messageToBits(message);

    if (samples.size() < bits.size() * sampleRate * delayBit1 * channels) {
        std::cerr << "Audio file is too short to encode the message." << std::endl;
        return false;
    }

    addEcho(samples, sampleRate, channels, bits);

    if (!writeWavFile(outputWav, samples, sampleRate, channels)) {
        std::cerr << "Failed to write output WAV file." << std::endl;
        return false;
    }

    return true;
}

bool EchoEncoder::readWavFile(const std::string& filename, std::vector<float>& samples, int& sampleRate, int& channels) {
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

bool EchoEncoder::writeWavFile(const std::string& filename, const std::vector<float>& samples, int sampleRate, int channels) {
    SF_INFO sfInfo;
    sfInfo.samplerate = sampleRate;
    sfInfo.channels = channels;
    sfInfo.format = SF_FORMAT_WAV | SF_FORMAT_PCM_16;

    SNDFILE* sndFile = sf_open(filename.c_str(), SFM_WRITE, &sfInfo);
    if (!sndFile) {
        std::cerr << "Error opening sound file for writing: " << sf_strerror(NULL) << std::endl;
        return false;
    }

    sf_write_float(sndFile, samples.data(), samples.size());
    sf_close(sndFile);

    return true;
}

void EchoEncoder::addEcho(std::vector<float>& samples, int sampleRate, int channels, const std::vector<bool>& bits) {
    std::vector<float> modifiedSamples = samples;

    int samplesPerBit = static_cast<int>((delayBit0 + delayBit1) * sampleRate);

    for (size_t i = 0; i < bits.size(); ++i) {
        int delaySamples = bits[i] ? static_cast<int>(delayBit1 * sampleRate) : static_cast<int>(delayBit0 * sampleRate);
        int bitStartIndex = i * samplesPerBit * channels;
        int segmentSize = samplesPerBit * channels;

        for (size_t idx = bitStartIndex; idx < bitStartIndex + segmentSize - delaySamples * channels; idx += channels) {
            size_t delayedIdx = idx + delaySamples * channels;
            if (delayedIdx < modifiedSamples.size()) {
                modifiedSamples[delayedIdx] += decayFactor * samples[idx];
            }
        }
    }

    // Normalize if needed
    samples = modifiedSamples;
}




std::vector<bool> EchoEncoder::messageToBits(const std::string& message) {
    std::vector<bool> bits;
    std::cout << "Encoding message: " << message << std::endl;
    std::cout << "Bits: ";
    for (char c : message) {
        for (int i = 7; i >= 0; --i) {
            bool bit = ((c >> i) & 1);
            bits.push_back(bit);
            std::cout << bit;
        }
    }
    std::cout << std::endl;
    return bits;
}

