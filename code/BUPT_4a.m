% image created by Zhengxiao Wu

% Lena salt and pepper noise   
% Peppers salt and pepper noise   
% Baboon salt and pepper noise   
% Lena Gaussian noise  σ =1% of the range. 
% Peppers Gaussian noise σ =2% of the range. 
% Baboon Gaussian noise σ =7% of the range. 
% Lena Gaussian noise  σ =5% of the range. 
% Peppers Gaussian noise σ =5% of the range. 
% Baboon Gaussian noise σ =7% of the range. 

img_lena = BUPT_read_pgm('dataset/test_images/Lena512_ASCII2014.pgm');
img_peppers = BUPT_read_pgm('dataset/test_images/Peppers512_ASCII2014.pgm');
img_baboon = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');

add_and_show_noise(img_lena, 'salt_pepper', 0.1, 'Lena');
add_and_show_noise(img_peppers, 'salt_pepper', 0.1, 'Peppers');
add_and_show_noise(img_baboon, 'salt_pepper', 0.1, 'Baboon');

add_and_show_noise(img_lena, 'gaussian', 0.01, 'Lena');
add_and_show_noise(img_peppers, 'gaussian', 0.02, 'Peppers');
add_and_show_noise(img_baboon, 'gaussian', 0.07, 'Baboon');

add_and_show_noise(img_lena, 'gaussian', 0.05, 'Lena');
add_and_show_noise(img_peppers, 'gaussian', 0.05, 'Peppers');
add_and_show_noise(img_baboon, 'gaussian', 0.07, 'Baboon');

function add_and_show_noise(img, noise_type, noise_param, img_name)
    img_noise = BUPT_add_noise(img, noise_type, noise_param);
    % [mse, psnr0] = BUPT_mse_psnr(img, img_noise);
    figure;
    imshow(img_noise);
    title(sprintf('%s, %s, %f', img_name, noise_type, noise_param));
end