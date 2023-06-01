function inverted_img = BUPT_image_inversion(img)
    % Compute the maximum intensity value of the image
    % max_intensity = max(img(:));
    max_intensity = 255;
    
    % Invert the image by subtracting each pixel value from the maximum intensity value
    inverted_img = max_intensity - img;
end