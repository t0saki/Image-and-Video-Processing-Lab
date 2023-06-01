function noisy_img = BUPT_add_noise(img, noise_type, noise_params)
    % Add noise to the input image
    switch noise_type
        case 'salt_pepper'
            % Add salt and pepper noise to the image
            density = noise_params;
            noisy_img = imnoise(img, 'salt & pepper', density);
        case 'gaussian'
            % Add Gaussian noise to the image
            mean = 0;
            variance = noise_params;
            noisy_img = imnoise(img, 'gaussian', mean, variance);
        otherwise
            error('Unknown noise type');
    end
end