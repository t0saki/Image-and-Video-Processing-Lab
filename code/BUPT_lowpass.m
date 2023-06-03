% image created by Zhengxiao Wu
function filtered_img = BUPT_lowpass(img, sigma)
    % Determine the size of the kernel
    kernel_size = 2 * ceil(3 * sigma) + 1;

    % Create a meshgrid to represent the coordinates of the kernel
    [x, y] = meshgrid(-(kernel_size-1)/2:(kernel_size-1)/2, -(kernel_size-1)/2:(kernel_size-1)/2);

    % Calculate the Gaussian kernel values
    kernel = exp(-(x.^2 + y.^2) / (2 * sigma^2)) / (2 * pi * sigma^2);

    % Normalize the kernel
    kernel = kernel / sum(kernel(:));

    % Convert the image to double for convolution
    img = im2double(img);

    % Perform convolution using the Gaussian kernel
    filtered_img = conv2(img, kernel, 'same');

    % Convert the filtered image back to the original data type
    filtered_img = cast(filtered_img, class(img));
end
