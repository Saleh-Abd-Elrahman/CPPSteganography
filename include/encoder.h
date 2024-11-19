#ifndef ENCODER_H
#define ENCODER_H

#include <png.h> 
#include <string>

void encodeMessageInPNG(const std::string& inputImagePath, const std::string& outputImagePath, const std::string& message);
void hideMessageInImage(png_bytep* rows, int width, int height, const std::string& message, bool hasAlpha);
void savePNG(const char* outputImagePath, png_bytep* rows, int width, int height, png_byte colorType);

#endif