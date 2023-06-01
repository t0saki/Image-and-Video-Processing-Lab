function modeled_img = BUPT_histogram_modeling(img_A, img_B)
    % Compute the histogram values of image A and B
    hist_A = BUPT_histogram(img_A);
    hist_B = BUPT_histogram(img_B);

    % Compute the cumulative distribution functions of the histograms
    cdf_A = cumsum(hist_A) / numel(img_A);
    cdf_B = cumsum(hist_B) / numel(img_B);

    % Compute the mapping index
    mapping_index = zeros(1, 256);
    for i = 1 : 256
        [~, index] = min(abs(cdf_A(i) - cdf_B));
        mapping_index(i) = index - 1;
    end

    % Map the image A to image B
    modeled_img = uint8(mapping_index(img_A + 1));
end
