% image created by Zhengxiao Wu
% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img = BUPT_read_pgm('results/89217890_p0_with_name.pgm');

% figure;
% % Rotate 30, 60 120 and -50
% rotate = 30;
% skew = 0;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(2, 2, 1);
% imshow(img_rotate);
% title('Rotate 30');

% rotate = 60;
% skew = 0;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(2, 2, 2);
% imshow(img_rotate);
% title('Rotate 60');

% rotate = 120;
% skew = 0;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(2, 2, 3);
% imshow(img_rotate);
% title('Rotate 120');

% rotate = -50;
% skew = 0;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(2, 2, 4);
% imshow(img_rotate);
% title('Rotate -50');

% figure;
% % Skew 10, 40 and 60
% rotate = 0;
% skew = 10;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(1, 3, 1);
% imshow(img_rotate);
% title('Skew 10');

% rotate = 0;
% skew = 40;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(1, 3, 2);
% imshow(img_rotate);
% title('Skew 40');

% rotate = 0;
% skew = 60;
% img_rotate = BUPT_transform(img, rotate, skew);
% subplot(1, 3, 3);
% imshow(img_rotate);
% title('Skew 60');


% Rotate the image by 20 degrees clockwise and then skew the result by 50 degrees. Display the result in ‘a’.
% Skew the image by 50 degrees and then rotate the result by 20 degrees clockwise. Display the result in ‘b’.

figure;
% Rotate 20 and skew 50
rotate = 20;
skew = 50;
img_rotate = BUPT_transform(img, rotate, 0);
img_skew = BUPT_transform(img_rotate, 0, skew);
subplot(1, 2, 1);
imshow(img_skew);
title('Rotate 20 and skew 50');

% Skew 50 and rotate 20
skew = 50;
rotate = 20;
img_skew = BUPT_transform(img, 0, skew);
img_rotate = BUPT_transform(img_skew, rotate, 0);
subplot(1, 2, 2);
imshow(img_rotate);
title('Skew 50 and rotate 20');