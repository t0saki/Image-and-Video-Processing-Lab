% image created by Zhengxiao Wu
img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img*255);
img = BUPT_format_converter(img);

% Show image
figure(1);
subplot(1, 2, 1);
imshow(img);
title('Original image');

% % Subsample image
% img_subsampled = BUPT_subsampling(img, 2, 1);
% subplot(2, 2, 1);
% imshow(img_subsampled);
% title('2 horizontal');

% % Subsample image
% img_subsampled = BUPT_subsampling(img, 1, 2);
% subplot(2, 2, 2);
% imshow(img_subsampled);
% title('2 vertical');

% % Subsample image
% img_subsampled = BUPT_subsampling(img, 8, 2);
% subplot(2, 2, 3);
% imshow(img_subsampled);
% title('2 vertical and 8 horizontal');

% % Subsample image
% img_subsampled = BUPT_subsampling(img, 4, 4);
% subplot(2, 2, 4);
% imshow(img_subsampled);
% title('4 vertical and 4 horizontal');

img_subsampled = BUPT_subsampling(img, 4, 4);
subplot(1, 2, 2);
imshow(img_subsampled);
title('4 vertical and 4 horizontal');
