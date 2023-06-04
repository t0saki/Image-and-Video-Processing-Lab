% image created by Zhengxiao Wu
img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');

% % Set the variance for the LoG operator
% variance = 16;  % Adjust this value to control the amount of smoothing

% % Apply the Laplacian of Gaussian operator
% log_img = BUPT_LoG(img, variance);

% % Display the result
% figure;
% subplot(1, 2, 1);
% imshow(img);
% title('Original Image');
% subplot(1, 2, 2);
% imshow(log_img);
% title('Laplacian of Gaussian');

% Lena σ = 1, Peppers σ = 3
% Baboon σ = 1, Baboon σ = 2, Baboon σ = 3

% % Lena σ = 1
% figure;
% log_img = BUPT_LoG(img_lena, 1);
% imshow(log_img);
% title('Laplacian of Gaussian, Lena σ = 1');

% % Peppers σ = 3
% figure;
% log_img = BUPT_LoG(img_peppers, 3);
% imshow(log_img);
% title('Laplacian of Gaussian, Peppers σ = 3');

% % Baboon σ = 1
% figure;
% log_img = BUPT_LoG(img_baboon, 1);
% imshow(log_img);
% title('Laplacian of Gaussian, Baboon σ = 1');
% % Baboon σ = 2
% figure;
% log_img = BUPT_LoG(img_baboon, 2);
% imshow(log_img);
% title('Laplacian of Gaussian, Baboon σ = 2');
% % Baboon σ = 3
% figure;
% log_img = BUPT_LoG(img_baboon, 3);
% imshow(log_img);
% title('Laplacian of Gaussian, Baboon σ = 3');

% Lena σ = 3, Peppers σ = 6

figure;
log_img = BUPT_LoG(img_lena, 3);
imshow(log_img);

figure;
log_img = BUPT_LoG(img_peppers, 6);
imshow(log_img);