#include "decoder.h"
#include <png.h>
#include <iostream>

std::string decodeMessageFromPNG(const std::string& imagePath) {
    FILE *fp = fopen(imagePath.c_str(), "rb");
    if (!fp) {
        std::cerr << "Error: Unable to open file " << imagePath << std::endl;
        return "";
    }

    png_structp png = png_create_read_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    png_infop info = png_create_info_struct(png);
    if (setjmp(png_jmpbuf(png))) {
        std::cerr << "Error during PNG read initialization" << std::endl;
        fclose(fp);
        return "";
    }

    png_init_io(png, fp);
    png_read_info(png, info);

    int width = png_get_image_width(png, info);
    int height = png_get_image_height(png, info);
    png_byte color_type = png_get_color_type(png, info);
    png_read_update_info(png, info);

    png_bytep *rows = (png_bytep*) malloc(sizeof(png_bytep) * height);
    for (int y = 0; y < height; y++) {
        rows[y] = (png_byte*) malloc(png_get_rowbytes(png, info));
    }
    png_read_image(png, rows);
    fclose(fp);

    std::string binaryMessage;
    for (int y = 0; y < height; ++y) {
        png_bytep row = rows[y];
        for (int x = 0; x < width; ++x) {
            png_bytep px = &(row[x * (color_type == PNG_COLOR_TYPE_RGBA ? 4 : 3)]);
            binaryMessage += (px[2] & 1) ? '1' : '0';
        }
    }

    std::string decodedMessage;
    for (size_t i = 0; i < binaryMessage.size(); i += 8) {
        if (i + 8 <= binaryMessage.size()) {
            char byte = std::stoi(binaryMessage.substr(i, 8), nullptr, 2);
            decodedMessage += byte;
        }
    }

    for (int y = 0; y < height; y++) {
        free(rows[y]);
    }
    free(rows);
    png_destroy_read_struct(&png, &info, NULL);

    return decodedMessage;
}