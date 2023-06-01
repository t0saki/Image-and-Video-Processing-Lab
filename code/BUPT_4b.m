img = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');

% Upsample the image
img_nearest = BUPT_up(img, 2.5, 'nearest');
img_bilinear = BUPT_up(img, 2.5, 'bilinear');

% Show the original image and the upsampled images
figure;
subplot(1, 3, 1);
imshow(img);
title('Original image');
subplot(1, 3, 2);
imshow(img_nearest);
title('Upsampled image (nearest)');
subplot(1, 3, 3);
imshow(img_bilinear);
title('Upsampled image (bilinear)');
