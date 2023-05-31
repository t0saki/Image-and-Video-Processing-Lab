function gray_img = BUPT_format_converter(colour_img)
    % Convert the image to grayscale using YUV conversion
    R = double(colour_img(:, :, 1));
    G = double(colour_img(:, :, 2));
    B = double(colour_img(:, :, 3));
    Y = 0.257 * R + 0.504 * G + 0.098 * B + 16;
    U = -0.148 * R - 0.291 * G + 0.439 * B + 128;
    V = 0.439 * R - 0.368 * G - 0.071 * B + 128;
    gray_img = uint8(Y);

    % Write the grayscale image to PGM format
    % imwrite(gray_img, output_file);
end
