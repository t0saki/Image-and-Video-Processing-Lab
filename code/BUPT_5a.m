img = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');

% Apply low-pass filtering with sigma = 2
sigma = 2;
filtered_img = BUPT_lowpass(img, sigma);

% Display the original and filtered images
figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');
subplot(1, 2, 2);
imshow(filtered_img);
title('Filtered Image');

% Add noise to the image (optional, for comparison)
noisy_img = imnoise(img, 'gaussian', 0, 0.01);

% Apply rectangular filtering with a 5-by-5 kernel
kernel_size_5 = 5;
filtered_img_5 = BUPT_rect(noisy_img, kernel_size_5);

% Apply rectangular filtering with a 7-by-7 kernel
kernel_size_7 = 7;
filtered_img_7 = BUPT_rect(noisy_img, kernel_size_7);

% Display the original, noisy, and filtered images
figure;
subplot(1, 3, 1);
imshow(img);
title('Original Image');
subplot(1, 3, 2);
imshow(noisy_img);
title('Noisy Image');
subplot(1, 3, 3);
imshow(filtered_img_5);
title('Filtered Image (5-by-5 kernel)');
figure;
subplot(1, 3, 1);
imshow(img);
title('Original Image');
subplot(1, 3, 2);
imshow(noisy_img);
title('Noisy Image');
subplot(1, 3, 3);
imshow(filtered_img_7);
title('Filtered Image (7-by-7 kernel)');
