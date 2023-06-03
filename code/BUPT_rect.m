% image created by Zhengxiao Wu
function filtered_img = BUPT_rect(img, kernel_size)
    % Create the rectangular kernel
    kernel = ones(kernel_size);

    % Normalize the kernel
    kernel = kernel / sum(kernel(:));

    % Convert the image to double for convolution
    img = im2double(img);

    % Perform convolution using the rectangular kernel
    filtered_img = conv2(img, kernel, 'same');

    % Convert the filtered image back to the original data type
    filtered_img = cast(filtered_img, class(img));
end
