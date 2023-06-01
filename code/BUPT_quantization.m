function quantized_img = BUPT_quantization(img, n)
    % Convert the input image to double precision
    img = double(img);
    
    % Compute the number of bits required to represent n levels
    bits = ceil(log2(n));
    
    % Compute the quantization factor
    q = 2^bits;
    
    % Quantize the image
    quantized_img = floor(img / q) * q;
    
    % Convert the image to 8-bit-per-pixel representation
    quantized_img = uint8(quantized_img);
end