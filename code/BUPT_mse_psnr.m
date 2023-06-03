% image created by Zhengxiao Wu
function [mse, psnr] = BUPT_mse_psnr(img1, img2)
    img1 = double(img1);
    img2 = double(img2);

    % Compute the mean squared error between the two images
    mse = mean(double(img1(:) - img2(:)) .^ 2);

    % Compute the peak signal-to-noise ratio between the two images
    max_intensity = double(max(img1(:)));
    psnr = 10 * log10(max_intensity ^ 2 / mse);
end
