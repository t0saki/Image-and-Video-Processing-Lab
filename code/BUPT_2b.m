img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% Show image
figure(1);
imshow(img);
title('Original image');

% Show histogram
hist_values = BUPT_histogram(img);
% Display the histogram
figure;
bar(hist_values);
title('Histogram of Input Image');
xlabel('Gray Level');
ylabel('Count');
