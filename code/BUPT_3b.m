% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% Rotate and transform
img = BUPT_transform(img, 30, 60);

figure;
imshow(img);
title('Transformed image');
