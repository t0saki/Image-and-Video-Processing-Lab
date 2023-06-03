% image created by Zhengxiao Wu
img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% Add noise
img_noise = imnoise(img, 'gaussian', 0.01);
[mse, psnr0] = BUPT_mse_psnr(img, img_noise);

% Show
figure;
subplot(1, 2, 1);
imshow(img);
title('Original');
subplot(1, 2, 2);
imshow(img_noise);
title('Noise');
fprintf('MSE: %f, PSNR: %f\n', mse, psnr0);

% % Official implementation of mse and psnr
% mse = immse(img, img_noise);
% psnr0 = psnr(img, img_noise);
% fprintf('MSE: %f, PSNR: %f\n', mse, psnr0);