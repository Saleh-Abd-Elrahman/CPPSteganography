#include "encoder.h"
#include "decoder.h"
#include <iostream>

int main() {
    const std::string inputImage = "input.png";
    const std::string outputImage = "output.png";
    const std::string message = "Secret message";

    encodeMessageInPNG(inputImage, outputImage, message);

    std::string decodedMessage = decodeMessageFromPNG(outputImage);
    std::cout << "Decoded Message: " << decodedMessage << std::endl;

    return 0;
}