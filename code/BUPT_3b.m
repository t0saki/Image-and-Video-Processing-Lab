% image created by Zhengxiao Wu
% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
img = BUPT_read_pgm('results/89217890_p0_with_name.pgm');

figure;
% Rotate 30, 60 120 and -50
skew = 30;
rotate = 0;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 1);
imshow(img_t);
title('Skew: 30');

skew = 60;
rotate = 0;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 2);
imshow(img_t);
title('Skew: 60');

skew = 120;
rotate = 0;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 3);
imshow(img_t);
title('Skew: 120');

skew = -50;
rotate = 0;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 4);
imshow(img_t);
title('Skew: -50');

figure;
% Skew 10, 40 and 60
skew = 0;
rotate = 10;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 1);
imshow(img_t);
title('Rotate: 10');

skew = 0;
rotate = 40;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 2);
imshow(img_t);
title('Rotate: 40');

skew = 0;
rotate = 60;
img_t = BUPT_transform(img, skew, rotate);
subplot(2, 2, 3);
imshow(img_t);
title('Rotate: 60');
