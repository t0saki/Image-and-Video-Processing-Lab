% image created by Zhengxiao Wu
function equalized_img = BUPT_histogram_equalization(img)
    % Compute the histogram values
    hist_values = BUPT_histogram(img);

    % Compute the cumulative distribution function
    cdf = cumsum(hist_values) / numel(img);

    % Compute the equalization mapping
    equalization_map = uint8(255 * cdf);

    % Apply the equalization mapping to the image
    equalized_img = equalization_map(img + 1);
end
