% image created by Zhengxiao Wu
% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% % img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% % Convert to uint8
% img_color = uint8(img * 255);
% img_gray = BUPT_format_converter(img_color);

% figure(1);
% subplot(1,3,1);
% imshow(img_color);
% title('Original Image');

% % Apply the negative filter
% img_color_neg = BUPT_image_inversion(img_color);
% subplot(1,3,2);
% imshow(img_color_neg);
% title('Negative Color Image');

% img_gray_neg = BUPT_image_inversion(img_gray);
% subplot(1,3,3);
% imshow(img_gray_neg);
% title('Negative Gray Image');

% Gray PGM
figure;
% Negative of Lena
img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img_lena_neg = BUPT_image_inversion(img_lena);
subplot(1, 3, 1);
imshow(img_lena_neg);
title('Negative of Lena');

% Negative of Peppers
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
img_peppers_neg = BUPT_image_inversion(img_peppers);
subplot(1, 3, 2);
imshow(img_peppers_neg);
title('Negative of Peppers');

% Negative of Baboon
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');
img_baboon_neg = BUPT_image_inversion(img_baboon);
subplot(1, 3, 3);
imshow(img_baboon_neg);
title('Negative of Baboon');

% Color PPM
figure;
% Negative of Lena
img_lenac = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
img_lenac_neg = BUPT_image_inversion(img_lenac);
subplot(1, 3, 1);
imshow(img_lenac_neg);
title('Negative of Lena C');

% Negative of Peppers
img_peppersc = BUPT_read_ppm('dataset/test_images/Peppers512C_ASCII2014.ppm');
img_peppersc_neg = BUPT_image_inversion(img_peppersc);
subplot(1, 3, 2);
imshow(img_peppersc_neg);
title('Negative of Peppers C');

% Negative of Baboon
img_baboonc = BUPT_read_ppm('dataset/test_images/Baboon512C_ASCII2014.ppm');
img_baboonc_neg = BUPT_image_inversion(img_baboonc);
subplot(1, 3, 3);
imshow(img_baboonc_neg);
title('Negative of Baboon C');
