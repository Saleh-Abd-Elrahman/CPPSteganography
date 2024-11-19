#ifndef DECODER_H
#define DECODER_H

#include <string>
#include <png.h>

std::string decodeMessageFromPNG(const std::string& imagePath);
// Function declarations
void hideMessageInImage(png_bytep* rows, int width, int height, const std::string& message, bool hasAlpha);
void savePNG(const char* outputImagePath, png_bytep* rows, int width, int height, png_byte colorType);


#endif