% image created by Zhengxiao Wu
function hist_values = BUPT_histogram(img)
    % Compute the histogram values
    hist_values = zeros(1, 256);
    [h, w] = size(img);

    for i = 1:h

        for j = 1:w
            gray_level = img(i, j) + 1;
            if gray_level > 256
                gray_level = 256;
            end
            hist_values(gray_level) = hist_values(gray_level) + 1;
        end

    end

end
