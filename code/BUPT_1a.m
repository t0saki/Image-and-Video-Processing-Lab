% Test reading and writing PGM images in P2 and P5 formats
img_p2 = BUPT_read_pgm('dataset/test_images/Baboon512_ASCII2014.pgm');
BUPT_write_pgm(img_p2, 'results/test_pgm_p2_out.pgm', 'P2', 'Zhengxiao Wu');
img_p5 = BUPT_read_pgm('dataset/test_images/Baboon512_binary2014.pgm');
BUPT_write_pgm(img_p5, 'results/test_pgm_p5_out.pgm', 'P5', 'Zhengxiao Wu');

% Test reading and writing PPM images in P3 and P6 formats
img_p3 = BUPT_read_ppm('dataset/test_images/Baboon512C_ASCII2014.ppm');
BUPT_write_ppm(img_p3, 'results/test_ppm_p3_out.ppm', 'P3', 'Zhengxiao Wu');
img_p6 = BUPT_read_ppm('dataset/test_images/Baboon512C_Binary.ppm');
BUPT_write_ppm(img_p6, 'results/test_ppm_p6_out.ppm', 'P6', 'Zhengxiao Wu');

% Show the original and written images
figure;
subplot(2, 2, 1);
imshow(img_p2);
title('Original P2 image');
subplot(2, 2, 2);
imshow(img_p5);
title('Original P5 image');
subplot(2, 2, 3);
imshow(img_p3);
title('Original P3 image');
subplot(2, 2, 4);
imshow(img_p6);
title('Original P6 image');

figure;
subplot(2, 2, 1);
imshow(BUPT_read_pgm('results/test_pgm_p2_out.pgm'));
title('Written P2 image');
subplot(2, 2, 2);
imshow(BUPT_read_pgm('results/test_pgm_p5_out.pgm'));
title('Written P5 image');
subplot(2, 2, 3);
imshow(BUPT_read_ppm('results/test_ppm_p3_out.ppm'));
title('Written P3 image');
subplot(2, 2, 4);
imshow(BUPT_read_ppm('results/test_ppm_p6_out.ppm'));
title('Written P6 image');

% Convert JPG to P3,P5 and P6
img_jpg = imread('dataset/89217890_p0.jpg');
gray_jpg = rgb2gray(img_jpg);
BUPT_write_ppm(img_jpg, 'results/test_jpg_p3_out.ppm', 'P3', 'Zhengxiao Wu');
BUPT_write_pgm(gray_jpg, 'results/test_jpg_p5_out.pgm', 'P5', 'Zhengxiao Wu');
BUPT_write_ppm(img_jpg, 'results/test_jpg_p6_out.ppm', 'P6', 'Zhengxiao Wu');

% Show the written images
figure;
subplot(1, 3, 1);
imshow(BUPT_read_pgm('results/test_jpg_p5_out.pgm'));
title('Written P5 image');
subplot(1, 3, 2);
imshow(BUPT_read_ppm('results/test_jpg_p6_out.ppm'));
title('Written P6 image');
subplot(1, 3, 3);
imshow(BUPT_read_ppm('results/test_jpg_p3_out.ppm'));
title('Written P3 image');
