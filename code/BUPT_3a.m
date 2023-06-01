img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img_color = uint8(img * 255);
img_gray = BUPT_format_converter(img_color);

figure(1);
subplot(1,3,1);
imshow(img_color);
title('Original Image');

% Apply the negative filter
img_color_neg = BUPT_image_inversion(img_color);
subplot(1,3,2);
imshow(img_color_neg);
title('Negative Color Image');

img_gray_neg = BUPT_image_inversion(img_gray);
subplot(1,3,3);
imshow(img_gray_neg);
title('Negative Gray Image');