img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img*255);
img = BUPT_format_converter(img);

% Show image
figure(1);
imshow(img);
title('Original image');

% Subsample image
img_subsampled = BUPT_subsampling(img, 2, 2);
figure(2);
imshow(img_subsampled);

% Subsample image
img_subsampled = BUPT_subsampling(img, 2, 4);
figure(3);
imshow(img_subsampled);

% Subsample image
img_subsampled = BUPT_subsampling(img, 8, 2);
figure(4);
imshow(img_subsampled);