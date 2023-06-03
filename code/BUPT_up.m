% image created by Zhengxiao Wu
function upsampled_img = BUPT_up(img, factor, method)
    % Determine the size of the upsampled image
    [h, w, ~] = size(img);
    new_h = round(h * factor);
    new_w = round(w * factor);

    % Upsample the image using the specified method
    switch method
        case 'nearest'
            % Upsample using nearest neighbor interpolation
            upsampled_img = zeros(new_h, new_w, class(img));

            for y = 1:new_h

                for x = 1:new_w
                    src_y = round(y / factor);
                    src_x = round(x / factor);

                    if src_y < 1
                        src_y = 1;
                    elseif src_y > h
                        src_y = h;
                    end

                    if src_x < 1
                        src_x = 1;
                    elseif src_x > w
                        src_x = w;
                    end

                    upsampled_img(y, x, :) = img(src_y, src_x, :);
                end

            end

        case 'bilinear'
            % Upsample using bilinear interpolation
            upsampled_img = zeros(new_h, new_w, class(img));

            for y = 1:new_h

                for x = 1:new_w
                    src_y = y / factor;
                    src_x = x / factor;
                    x1 = floor(src_x);
                    x2 = ceil(src_x);
                    y1 = floor(src_y);
                    y2 = ceil(src_y);

                    % Perform bounds checking
                    if x1 < 1
                        x1 = 1;
                    elseif x1 > w
                        x1 = w;
                    end

                    if x2 < 1
                        x2 = 1;
                    elseif x2 > w
                        x2 = w;
                    end

                    if y1 < 1
                        y1 = 1;
                    elseif y1 > h
                        y1 = h;
                    end

                    if y2 < 1
                        y2 = 1;
                    elseif y2 > h
                        y2 = h;
                    end

                    dx = src_x - x1;
                    dy = src_y - y1;
                    q11 = img(y1, x1, :);
                    q12 = img(y2, x1, :);
                    q21 = img(y1, x2, :);
                    q22 = img(y2, x2, :);
                    upsampled_img(y, x, :) = (1 - dx) * (1 - dy) * q11 + dx * (1 - dy) * q21 + (1 - dx) * dy * q12 + dx * dy * q22;
                end

            end

        otherwise
            error('Unknown interpolation method');
    end

end
