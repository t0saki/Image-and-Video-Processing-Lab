function [Y, U, V] = BUPT_rgb2yuv(r, g, b)
    % Compute YUV values
    Y = uint8(0.257*r + 0.504*g + 0.098*b + 16);
    U = uint8(-0.148*r - 0.291*g + 0.439*b + 128);
    V = uint8(0.439*r - 0.368*g - 0.071*b + 128);
end
