% image created by Zhengxiao Wu
function [R, G, B] = BUPT_yuv2rgb(Y, U, V)
    % Convert to double
    Y = double(Y);
    U = double(U);
    V = double(V);

    convert_matrix = [1.164, 0.000, 1.596, -222.912;
                      1.164, -0.391, -0.813, 135.488;
                      1.164, 2.018, 0.000, -276.928;
                      0.000, 0.000, 0.000, 1.000];

    YUV = [Y(:)'; U(:)'; V(:)'; ones(1, numel(Y))];
    RGB = convert_matrix * YUV;
    R = reshape(RGB(1, :), size(Y));
    G = reshape(RGB(2, :), size(Y));
    B = reshape(RGB(3, :), size(Y));

    % Convert to uint8
    R = uint8(R);
    G = uint8(G);
    B = uint8(B);
end
