% image created by Zhengxiao Wu
img = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');

% % Apply low-pass filtering with sigma = 2
% sigma = 2;
% filtered_img = BUPT_lowpass(img, sigma);

% % Display the original and filtered images
% figure;
% subplot(1, 2, 1);
% imshow(img);
% title('Original Image');
% subplot(1, 2, 2);
% imshow(filtered_img);
% title('Filtered Image');

% % Add noise to the image (optional, for comparison)
% noisy_img = BUPT_add_noise(img, 'gaussian', 0.01);

% % Apply rectangular filtering with a 5-by-5 kernel
% kernel_size_5 = 5;
% filtered_img_5 = BUPT_rect(noisy_img, kernel_size_5);

% % Apply rectangular filtering with a 7-by-7 kernel
% kernel_size_7 = 7;
% filtered_img_7 = BUPT_rect(noisy_img, kernel_size_7);

% % Display the original, noisy, and filtered images
% figure;
% subplot(1, 3, 1);
% imshow(img);
% title('Original Image');
% subplot(1, 3, 2);
% imshow(noisy_img);
% title('Noisy Image');
% subplot(1, 3, 3);
% imshow(filtered_img_5);
% title('Filtered Image (5-by-5 kernel)');
% figure;
% subplot(1, 3, 1);
% imshow(img);
% title('Original Image');
% subplot(1, 3, 2);
% imshow(noisy_img);
% title('Noisy Image');
% subplot(1, 3, 3);
% imshow(filtered_img_7);
% title('Filtered Image (7-by-7 kernel)');

% % Add pepper-and-salt noise to the image
% noisy_img = BUPT_add_noise(img, 'salt_pepper', 0.1);
% figure;
% imshow(noisy_img);
% title('Noisy Image with Pepper-and-Salt Noise');

% Add Gaussian noise to the image Lena with noise power 50 dBm
noise_power = 1e-5 * (255);
noisy_img = BUPT_add_noise(img, 'gaussian', noise_power);

% Convolve the noisy image with Gaussian kernels with different sigmas
sigmas = [0.5, 1, 2, 4, 7, 10];
filtered_imgs = cell(1, numel(sigmas));

for i = 1:numel(sigmas)
    filtered_imgs{i} = BUPT_lowpass(noisy_img, sigmas(i));
end

% Filter the noisy image Lena with a 5-by-5 kernel
kernel_size_5 = 5;
filtered_img_5 = BUPT_rect(noisy_img, kernel_size_5);

% Filter the noisy image Lena with a 7-by-7 kernel
kernel_size_7 = 7;
filtered_img_7 = BUPT_rect(noisy_img, kernel_size_7);

% Display the resulting images
figure;

for i = 1:numel(sigmas)
    subplot(2, 3, i);
    imshow(filtered_imgs{i});
    title(['Filtered Image (Sigma = ' num2str(sigmas(i)) ')']);
end

figure;
subplot(1, 3, 1);
imshow(noisy_img);
title('Noisy Image');
subplot(1, 3, 2);
imshow(filtered_img_5);
title('Filtered Image (5-by-5 kernel)');
subplot(1, 3, 3);
imshow(filtered_img_7);
title('Filtered Image (7-by-7 kernel)');
