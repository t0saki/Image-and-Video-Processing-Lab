% image created by Zhengxiao Wu
% Lena
figure(1);
img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
% Equalize
eq_lena = BUPT_histogram_equalization(img_lena);

% Show image
subplot(1, 2, 1);
imshow(eq_lena);
title('Equalized image of Lena');

% Show new histogram
hist_lena = BUPT_histogram(eq_lena);
subplot(1, 2, 2);
bar(hist_lena);
title('Equalized histogram of Lena');
xlabel('Gray Level');
ylabel('Count');

% Baboon
figure(2);
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');
% Equalize
eq_baboon = BUPT_histogram_equalization(img_baboon);

% Show image
subplot(1, 2, 1);
imshow(eq_baboon);
title('Equalized image of Baboon');

% Show new histogram
hist_baboon = BUPT_histogram(eq_baboon);
subplot(1, 2, 2);
bar(hist_baboon);
title('Equalized histogram of Baboon');
xlabel('Gray Level');
ylabel('Count');

% Peppers
figure(3);
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
% Equalize
eq_peppers = BUPT_histogram_equalization(img_peppers);

% Show image
subplot(1, 2, 1);
imshow(eq_peppers);
title('Equalized image of Peppers');

% Show new histogram
hist_peppers = BUPT_histogram(eq_peppers);
subplot(1, 2, 2);
bar(hist_peppers);
title('Equalized histogram of Peppers');
xlabel('Gray Level');
ylabel('Count');

figure;
img = imread('dataset/hist_enhancement.jpg');
img = BUPT_format_converter(img);
subplot(1, 2, 1);
imshow(img);
title('Original image');

% Equalize
eq_img = BUPT_histogram_equalization(img);
subplot(1, 2, 2);
imshow(eq_img);
title('Enhanced image');
