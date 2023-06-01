% img = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img = BUPT_read_ppm('dataset/test_images/Peppers512C_binary2014.ppm');

% Apply edge detection with the Sobel filter
sobel_edge = BUPT_edge_detection(img, 'sobel');

% Apply edge detection with the Roberts filter
roberts_edge = BUPT_edge_detection(img, 'roberts');

% Apply edge detection with the Prewitt filter
prewitt_edge = BUPT_edge_detection(img, 'prewitt');

% Display the edge images
figure;
subplot(1, 3, 1);
imshow(sobel_edge);
title('Sobel Edge');
subplot(1, 3, 2);
imshow(roberts_edge);
title('Roberts Edge');
subplot(1, 3, 3);
imshow(prewitt_edge);
title('Prewitt Edge');