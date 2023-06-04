% image created by Zhengxiao Wu
img_lena_grey = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img_peppers_colour = BUPT_read_ppm('dataset/test_images/Peppers512C_binary2014.ppm');

% % Apply edge detection with the Sobel filter
% sobel_edge = BUPT_edge_detection(img, 'sobel');

% % Apply edge detection with the Roberts filter
% roberts_edge = BUPT_edge_detection(img, 'roberts');

% % Apply edge detection with the Prewitt filter
% prewitt_edge = BUPT_edge_detection(img, 'prewitt');

% % Display the edge images
% figure;
% subplot(1, 3, 1);
% imshow(sobel_edge);
% title('Sobel Edge');
% subplot(1, 3, 2);
% imshow(roberts_edge);
% title('Roberts Edge');
% subplot(1, 3, 3);
% imshow(prewitt_edge);
% title('Prewitt Edge');

% Sobel Lena (grey), Sobel Peppers (colour), Prewitt Lena (grey), Prewitt Peppers (colour)

figure;
% Sobel Lena (grey)
sobel_lena = BUPT_edge_detection(img_lena_grey, 'sobel');
subplot(2, 2, 1);
imshow(sobel_lena);
title('Sobel Lena (grey)');
% Sobel Peppers (colour)
sobel_peppers = BUPT_edge_detection(img_peppers_colour, 'sobel');
subplot(2, 2, 2);
imshow(sobel_peppers);
title('Sobel Peppers (colour)');
% Prewitt Lena (grey)
prewitt_lena = BUPT_edge_detection(img_lena_grey, 'prewitt');
subplot(2, 2, 3);
imshow(prewitt_lena);
title('Prewitt Lena (grey)');
% Prewitt Peppers (colour)
prewitt_peppers = BUPT_edge_detection(img_peppers_colour, 'prewitt');
subplot(2, 2, 4);
imshow(prewitt_peppers);
title('Prewitt Peppers (colour)');
