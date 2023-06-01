img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
% img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% Convert to uint8
img = uint8(img*255);
img = BUPT_format_converter(img);

% Show image
figure(1);
imshow(img);
title('Original image');

% Quantization by 128
img_quantized_128 = BUPT_quantization(img, 128);
figure(128);
imshow(img_quantized_128);
title('Quantized image by 128');

% Quantization by 32
img_quantized_32 = BUPT_quantization(img, 32);
figure(3);
imshow(img_quantized_32);
title('Quantized image by 32');