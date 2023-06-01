function sub_img = BUPT_subsampling(img, h_ratio, v_ratio)
    % Get the size of the input image
    [h, w] = size(img);
    
    % Compute the size of the output image
    h_new = floor(h / v_ratio);
    w_new = floor(w / h_ratio);
    
    % Initialize the output image
    sub_img = zeros(h_new, w_new);
    
    % Sub-sample the image
    for i = 1:h_new
        for j = 1:w_new
            sub_img(i, j) = img((i-1)*v_ratio+1, (j-1)*h_ratio+1);
        end
    end

    % Convert the image to uint8
    sub_img = uint8(sub_img);
end