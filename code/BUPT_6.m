img = BUPT_read_pgm('dataset/test_images/Peppers512_binary2014.pgm');

% Set the variance for the LoG operator
variance = 16;  % Adjust this value to control the amount of smoothing

% Apply the Laplacian of Gaussian operator
log_img = BUPT_LoG(img, variance);

% Display the result
figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');
subplot(1, 2, 2);
imshow(log_img);
title('Laplacian of Gaussian');