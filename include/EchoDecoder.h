#ifndef ECHO_DECODER_H
#define ECHO_DECODER_H

#include <string>
#include <vector>

class EchoDecoder {
public:
    EchoDecoder(double delay0 = 0.01, double delay1 = 0.04);
    bool decodeMessage(const std::string& inputWav, std::string& message, int messageLength);

private:
    double delayBit0;
    double delayBit1;
    bool readWavFile(const std::string& filename, std::vector<float>& samples, int& sampleRate, int& channels);
    std::vector<bool> extractBits(const std::vector<float>& samples, int sampleRate, int channels, int numBits);
    std::string bitsToMessage(const std::vector<bool>& bits);
};

#endif // ECHO_DECODER_H
