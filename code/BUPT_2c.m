% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% Show image
figure(1);
imshow(img);
title('Original image');

% Equalize
img_eq = BUPT_histogram_equalization(img);

% Show image
figure(2);
imshow(img_eq);
title('Equalized image');

% Show new histogram
figure(3);
hist_values = BUPT_histogram(img_eq);
bar(hist_values);
title('Equalized histogram');
xlabel('Gray Level');
ylabel('Count');
