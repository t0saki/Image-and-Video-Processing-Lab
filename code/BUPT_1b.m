% image created by Zhengxiao Wu
figure();
% img = BUPT_read_ppm('results/test_jpg_p6_out.ppm');
img = BUPT_read_ppm('dataset/test_images/Lena512C_ASCII2014.ppm');
% img = BUPT_read_ppm('dataset/test_images/Baboon512C_Binary2014.ppm');
% Convert to uint8
img = uint8(img*255);
% img = imread('dataset/89217890_p0.jpg');
imshow(img);

figure();
gray_img = BUPT_format_converter(img);
imshow(gray_img);

figure();
ro = img(:, :, 1);
go = img(:, :, 2);
bo = img(:, :, 3);
[y, u, v] = BUPT_rgb2yuv(ro, go, bo);
img_yuv = cat(3, y, u, v);
imshow(img_yuv);

figure();
[r, g, b] = BUPT_yuv2rgb(y, u, v);
img_rgb = cat(3, r, g, b);
imshow(img_rgb);

% % Official rgb2yuvs
% figure();
% img_yuv = rgb2ycbcr(img);
% img_o = ycbcr2rgb(img_yuv);
% imshow(img_o);