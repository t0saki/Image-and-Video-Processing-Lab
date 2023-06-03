% image created by Zhengxiao Wu
function inverted_img = BUPT_image_inversion(img)
    % Compute the maximum intensity value of the image
    if isa(img, 'uint8')
        max_intensity = 255;
        img = double(img);
    elseif isa(img, 'double')
        max_intensity = 1;
    else
        error('Unsupported image type');
    end

    % Invert the image by subtracting each pixel value from the maximum intensity value
    inverted_img = max_intensity - img;

    % Normalize the image to the range uint8 [0, 255]
    inverted_img = uint8(255 * double(inverted_img / max_intensity));
end
