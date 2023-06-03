% image created by Zhengxiao Wu
function log_img = BUPT_LoG(img, variance)
    % Convert the image to double for filtering
    img = im2double(img);

    % Create the Gaussian filter kernel
    filter_size = 2 * ceil(3 * variance) + 1;
    half_size = floor(filter_size / 2);
    [X, Y] = meshgrid(-half_size:half_size, -half_size:half_size);
    gauss_filter = exp(- (X .^ 2 + Y .^ 2) / (2 * variance));
    gauss_filter = gauss_filter / sum(gauss_filter(:));

    % Apply Gaussian filtering to smooth the image
    smoothed_img = conv2(img, gauss_filter, 'same');

    % Define the Laplacian filter
    laplacian_filter = [0, 1, 0; 1, -4, 1; 0, 1, 0];

    % Apply Laplacian filtering to obtain the Laplacian response
    laplacian_img = conv2(smoothed_img, laplacian_filter, 'same');

    % Normalize the Laplacian response to the range [0, 1]
    % Without edge values
    edge_size = floor(filter_size / 2);
    laplacian_center = laplacian_img(edge_size:end-edge_size, edge_size:end-edge_size);
    laplacian_img = laplacian_img / max(laplacian_img(:));

    % Set negative values to zero
    laplacian_img(laplacian_img < 0) = 0;

    % Return the Laplacian of Gaussian image
    log_img = laplacian_img;

    % Convert the image to uint8 for display
    log_img = im2uint8(log_img);
end
