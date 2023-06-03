% image created by Zhengxiao Wu
img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% % Show image
% figure(1);
% imshow(img);
% title('Original image');

% % Quantization by 128
% img_quantized_128 = BUPT_quantization(img, 128);
% figure(128);
% imshow(img_quantized_128);
% title('Quantized image by 128');

% % Quantization by 32
% img_quantized_32 = BUPT_quantization(img, 32);
% figure(3);
% imshow(img_quantized_32);
% title('Quantized image by 32');

figure;

% Lena, quantization factor 2
img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img_lena_2 = BUPT_quantization(img_lena, 2);
subplot(2, 2, 1);
imshow(img_lena_2);
title('Lena, quantization factor 2');
BUPT_write_pgm(img_lena_2 / 2, 'results/lena_quantized_2_p2.pgm', 'P2', 'Zhengxiao Wu');
BUPT_write_pgm(img_lena_2 / 2, 'results/lena_quantized_2.pgm', 'P5', 'Zhengxiao Wu');

% Baboon, quantization factor 8
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');
img_baboon_8 = BUPT_quantization(img_baboon, 8);
subplot(2, 2, 2);
imshow(img_baboon_8);
title('Baboon, quantization factor 8');
BUPT_write_pgm(img_baboon_8 / 8, 'results/baboon_quantized_8.pgm', 'P5', 'Zhengxiao Wu');

% Peppers, quantization factor 32
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
img_peppers_32 = BUPT_quantization(img_peppers, 32);
subplot(2, 2, 3);
imshow(img_peppers_32);
title('Peppers, quantization factor 32');
BUPT_write_pgm(img_peppers_32 / 32, 'results/peppers_quantized_32.pgm', 'P5', 'Zhengxiao Wu');

% Peppers, quantization factor 128
img_peppers_128 = BUPT_quantization(img_peppers, 128);
subplot(2, 2, 4);
imshow(img_peppers_128);
title('Peppers, quantization factor 128');
BUPT_write_pgm(img_peppers_128 / 128, 'results/peppers_quantized_128.pgm', 'P5', 'Zhengxiao Wu');
