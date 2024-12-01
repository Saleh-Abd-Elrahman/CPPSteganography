#ifndef ECHO_ENCODER_H
#define ECHO_ENCODER_H

#include <string>
#include <vector>

class EchoEncoder {
public:
    EchoEncoder(double delay0 = 0.01, double delay1 = 0.04, float decay = 0.9);
    bool encodeMessage(const std::string& inputWav, const std::string& outputWav, const std::string& message);

private:
    double delayBit0;
    double delayBit1;
    float decayFactor;
    bool readWavFile(const std::string& filename, std::vector<float>& samples, int& sampleRate, int& channels);
    bool writeWavFile(const std::string& filename, const std::vector<float>& samples, int sampleRate, int channels);
    void addEcho(std::vector<float>& samples, int sampleRate, int channels, const std::vector<bool>& bits);
    std::vector<bool> messageToBits(const std::string& message);
};

#endif // ECHO_ENCODER_H
