#include "encoder.h"
#include <png.h>
#include <iostream>
#include <fstream>
#include <vector>

void encodeMessageInPNG(const std::string& inputImagePath, const std::string& outputImagePath, const std::string& message) {
    FILE *fp = fopen(inputImagePath.c_str(), "rb");
    if (!fp) {
        std::cerr << "Error: Unable to open input file " << inputImagePath << std::endl;
        return;
    }

    png_structp png = png_create_read_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    png_infop info = png_create_info_struct(png);
    if (setjmp(png_jmpbuf(png))) {
        std::cerr << "Error during PNG read initialization" << std::endl;
        fclose(fp);
        return;
    }

    png_init_io(png, fp);
    png_read_info(png, info);

    int width = png_get_image_width(png, info);
    int height = png_get_image_height(png, info);
    png_byte color_type = png_get_color_type(png, info);
    png_byte bit_depth = png_get_bit_depth(png, info);

    if (bit_depth != 8 || (color_type != PNG_COLOR_TYPE_RGB && color_type != PNG_COLOR_TYPE_RGBA)) {
        std::cerr << "Unsupported PNG format. Only 8-bit RGB or RGBA is supported." << std::endl;
        fclose(fp);
        return;
    }

    png_read_update_info(png, info);

    png_bytep *rows = (png_bytep*) malloc(sizeof(png_bytep) * height);
    for (int y = 0; y < height; y++) {
        rows[y] = (png_byte*) malloc(png_get_rowbytes(png, info));
    }
    png_read_image(png, rows);
    fclose(fp);

    // Call the function to encode the message into pixel data
    hideMessageInImage(rows, width, height, message, color_type == PNG_COLOR_TYPE_RGBA);

    // Save the modified image
    savePNG(outputImagePath.c_str(), rows, width, height, color_type);

    for (int y = 0; y < height; y++) {
        free(rows[y]);
    }
    free(rows);
    png_destroy_read_struct(&png, &info, NULL);
}

void hideMessageInImage(png_bytep* rows, int width, int height, const std::string& message, bool hasAlpha) {
    // Convert the message to binary
    std::string binaryMessage;
    for (char c : message) {
        for (int i = 7; i >= 0; i--) {
            binaryMessage += ((c >> i) & 1) ? '1' : '0';
        }
    }

    int messageIndex = 0;
    bool messageComplete = false;

    for (int y = 0; y < height && !messageComplete; ++y) {
        png_bytep row = rows[y];
        for (int x = 0; x < width && !messageComplete; ++x) {
            png_bytep px = &(row[x * (hasAlpha ? 4 : 3)]);
            
            // Modify LSB of the blue channel (index 2 for RGB/RGBA)
            if (messageIndex < binaryMessage.size()) {
                px[2] = (px[2] & ~1) | (binaryMessage[messageIndex++] - '0');
            } else {
                messageComplete = true;
            }
        }
    }
}

void savePNG(const char* outputPath, png_bytep* rows, int width, int height, png_byte color_type) {
    FILE *fp = fopen(outputPath, "wb");
    if (!fp) {
        std::cerr << "Error: Unable to open output file " << outputPath << std::endl;
        return;
    }

    png_structp png = png_create_write_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    png_infop info = png_create_info_struct(png);
    if (setjmp(png_jmpbuf(png))) {
        std::cerr << "Error during PNG write initialization" << std::endl;
        fclose(fp);
        return;
    }

    png_init_io(png, fp);
    png_set_IHDR(
        png,
        info,
        width,
        height,
        8,
        color_type,
        PNG_INTERLACE_NONE,
        PNG_COMPRESSION_TYPE_DEFAULT,
        PNG_FILTER_TYPE_DEFAULT
    );
    png_write_info(png, info);
    png_write_image(png, rows);
    png_write_end(png, NULL);

    fclose(fp);
    png_destroy_write_struct(&png, &info);
}