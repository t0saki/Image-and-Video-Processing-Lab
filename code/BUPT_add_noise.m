% image created by Zhengxiao Wu
function noisy_img = BUPT_add_noise(img, noise_type, noise_params)
    [height, width] = size(img);
    img = double(img);
    noisy_img = zeros(height, width);

    switch noise_type
        case 'salt_pepper'
            density = noise_params;
            noisy_pixels = floor(density * numel(img));

            % Create a copy of the original image
            noisy_img = img;

            % Generate random coordinates for salt and pepper noise
            salt_coords = randperm(numel(img), noisy_pixels);
            pepper_coords = randperm(numel(img), noisy_pixels);

            % Add salt noise to the selected coordinates
            noisy_img(salt_coords) = 255;

            % Add pepper noise to the selected coordinates
            noisy_img(pepper_coords) = 0;

        case 'gaussian'
            mean = 0;
            variance = noise_params;

            % Generate Gaussian noise
            noise = sqrt(variance) * randn(size(img)) * 255 + mean;

            % Add Gaussian noise to the original image
            noisy_img = img + noise;

        otherwise
            error('Unknown noise type');
    end

    noisy_img = uint8(noisy_img);
end
