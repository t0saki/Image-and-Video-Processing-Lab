% image created by Zhengxiao Wu
function edge_img = BUPT_edge_detection(img, method)
    % Convert the image to double for gradient calculation
    img = im2double(img);

    % Define the kernels for edge detection
    switch method
        case 'sobel'
            % Sobel filter kernels
            kernel_x = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
            kernel_y = [-1, -2, -1; 0, 0, 0; 1, 2, 1];

        case 'roberts'
            % Roberts filter kernels
            kernel_x = [1, 0; 0, -1];
            kernel_y = [0, 1; -1, 0];

        case 'prewitt'
            % Prewitt filter kernels
            kernel_x = [-1, 0, 1; -1, 0, 1; -1, 0, 1];
            kernel_y = [-1, -1, -1; 0, 0, 0; 1, 1, 1];

        otherwise
            error('Unknown edge detection method');
    end

    % Check grayscale or color image
    if (size(img, 3) == 3)
        % Separate color channels
        R = img(:, :, 1);
        G = img(:, :, 2);
        B = img(:, :, 3);
        % Apply convolution to calculate the gradients for each color channel
        gradient_x_R = conv2(R, kernel_x, 'same');
        gradient_y_R = conv2(R, kernel_y, 'same');
        gradient_x_G = conv2(G, kernel_x, 'same');
        gradient_y_G = conv2(G, kernel_y, 'same');
        gradient_x_B = conv2(B, kernel_x, 'same');
        gradient_y_B = conv2(B, kernel_y, 'same');

        % Calculate the gradient magnitude for each color channel
        Gmag_R = sqrt(gradient_x_R .^ 2 + gradient_y_R .^ 2);
        Gmag_G = sqrt(gradient_x_G .^ 2 + gradient_y_G .^ 2);
        Gmag_B = sqrt(gradient_x_B .^ 2 + gradient_y_B .^ 2);

        % Normalize the gradient magnitude to the range [0, 1] for each channel
        Gmag_R = Gmag_R / max(Gmag_R(:));
        Gmag_G = Gmag_G / max(Gmag_G(:));
        Gmag_B = Gmag_B / max(Gmag_B(:));

        % Concat the gradient magnitude for each channel
        edge_img = cat(3, Gmag_R, Gmag_G, Gmag_B);
    else

        % Apply convolution to calculate the gradients
        gradient_x = conv2(img, kernel_x, 'same');
        gradient_y = conv2(img, kernel_y, 'same');

        % Calculate the gradient magnitude
        Gmag = sqrt(gradient_x .^ 2 + gradient_y .^ 2);

        % Normalize the gradient magnitude to the range [0, 1]
        Gmag = Gmag / max(Gmag(:));

        % Create the edge image by taking the absolute value of the gradient magnitude
        edge_img = abs(Gmag);
    end

    % Convert the edge image to uint8
    edge_img = im2uint8(edge_img);
end
