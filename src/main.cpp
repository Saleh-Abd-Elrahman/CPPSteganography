#include "EchoEncoder.h"
#include "EchoDecoder.h"
#include <iostream>

void printUsage() {
    std::cout << "Usage:\n"
              << "  To encode: ./EchoHiding encode <input.wav> <output.wav> <message>\n"
              << "  To decode: ./EchoHiding decode <input.wav> <message_length>\n";
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printUsage();
        return 1;
    }

    std::string mode = argv[1];

    if (mode == "encode") {
        if (argc != 5) {
            printUsage();
            return 1;
        }
        std::string inputWav = argv[2];
        std::string outputWav = argv[3];
        std::string message = argv[4];

        EchoEncoder encoder;
        if (encoder.encodeMessage(inputWav, outputWav, message)) {
            std::cout << "Message encoded successfully into " << outputWav << std::endl;
        } else {
            std::cerr << "Failed to encode message." << std::endl;
            return 1;
        }
    } else if (mode == "decode") {
        if (argc != 4) {
            printUsage();
            return 1;
        }
        std::string inputWav = argv[2];
        int messageLength = std::stoi(argv[3]);

        EchoDecoder decoder;
        std::string message;
        if (decoder.decodeMessage(inputWav, message, messageLength)) {
            std::cout << "Decoded message: " << message << std::endl;
        } else {
            std::cerr << "Failed to decode message." << std::endl;
            return 1;
        }
    } else {
        printUsage();
        return 1;
    }

    return 0;
}
