% image created by Zhengxiao Wu
img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img * 255);
img = BUPT_format_converter(img);

% % Show image
% figure(1);
% imshow(img);
% title('Original image');

% % Show histogram
% hist_values = BUPT_histogram(img);
% % Display the histogram
% figure;
% bar(hist_values);
% title('Histogram of Input Image');
% xlabel('Gray Level');
% ylabel('Count');

figure;
% Lena
img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
hist_lena = BUPT_histogram(img_lena);
% Display the histogram
subplot(1, 3, 1);
bar(hist_lena);
title('Histogram of Lena');
xlabel('Gray Level');
ylabel('Count');

% Baboon
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');
hist_baboon = BUPT_histogram(img_baboon);
% Display the histogram
subplot(1, 3, 2);
bar(hist_baboon);
title('Histogram of Baboon');
xlabel('Gray Level');
ylabel('Count');

% Peppers
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
hist_peppers = BUPT_histogram(img_peppers);
% Display the histogram
subplot(1, 3, 3);
bar(hist_peppers);
title('Histogram of Peppers');
xlabel('Gray Level');
ylabel('Count');
