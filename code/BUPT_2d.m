img_A = BUPT_read_pgm('dataset/test_images/Lena512_binary2014.pgm');
img_B = BUPT_read_pgm('dataset/test_images/Peppers512_binary2014.pgm');

% Show the images
figure(1);
subplot(1,2,1);
imshow(img_A);
title('Lena512');
subplot(1,2,2);
imshow(img_B);
title('Peppers512');

% Compute the histogram
hist_A = BUPT_histogram(img_A);
hist_B = BUPT_histogram(img_B);
% figure(2);
% subplot(1,2,1);
% bar(hist_A);
% title('Histogram of Lena512');
% subplot(1,2,2);
% bar(hist_B);
% title('Histogram of Peppers512');

% Compute the histogram modeling
img_B_model = BUPT_histogram_modeling(img_B, img_A);
hist_B_model = BUPT_histogram(img_B_model);
figure(3);
subplot(1,2,1);
imshow(img_B);
title('Peppers512');
subplot(1,2,2);
imshow(img_B_model);
title('Peppers512 after modeling');

% Draw the histogram
figure(4);
subplot(1,2,1);
bar(hist_B);
title('Histogram of Peppers512');
subplot(1,2,2);
bar(hist_B_model);
title('Histogram of Peppers512 after modeling');