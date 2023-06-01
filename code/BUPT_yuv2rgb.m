function [R, G, B] = BUPT_yuv2rgb(Y, U, V)
    % % Convert to double
    % Y = double(Y);
    % U = double(U);
    % V = double(V);

    % convert_matrix = [1.164, 0.000, 1.596, -222.912;
    %                   1.164, -0.391, -0.813, 135.488;
    %                   1.164, 2.018, 0.000, -276.928;
    %                   0.000, 0.000, 0.000, 1.000];

    % YUV = [Y(:)'; U(:)'; V(:)'; ones(1, numel(Y))];
    % RGB = convert_matrix * YUV;
    % R = reshape(RGB(1, :), size(Y));
    % G = reshape(RGB(2, :), size(Y));
    % B = reshape(RGB(3, :), size(Y));

    % Convert to double
    Y = double(Y);
    U = double(U) - 128;
    V = double(V) - 128;

    % Calculate R, G, B
    R = double(Y + 1.13983 * V);
    G = double(Y - 0.39465 * U - 0.58060 * V);
    B = double(Y + 2.03211 * U);

    % % Normalize to [0, 255], set < 0 to 0, > 255 to 255
    % R(R < 0) = 0;
    % R(R > 255) = 255;
    % G(G < 0) = 0;
    % G(G > 255) = 255;
    % B(B < 0) = 0;
    % B(B > 255) = 255;

    % Linear Normalize to [0, 255]
    R = R * 255 / max(max(R));
    G = G * 255 / max(max(G));
    B = B * 255 / max(max(B));

    % Convert to uint8
    R = uint8(R);
    G = uint8(G);
    B = uint8(B);
end
