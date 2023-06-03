% image created by Zhengxiao Wu
function transformed_img = BUPT_transform(img, theta1, theta2)
    theta1 = -theta1;
    % Compute the rotation matrix
    R = [cosd(theta1) -sind(theta1); sind(theta1) cosd(theta1)];

    % Compute the skew matrix
    S = [1 1 / tand(theta2); 0 1];

    % Compute the transformation matrix
    T = S * R;

    % Compute the size of the transformed image
    [h, w] = size(img);
    corners = [1 1; 1 h; w 1; w h];
    transformed_corners = round(corners * T);
    min_x = min(transformed_corners(:, 1));
    max_x = max(transformed_corners(:, 1));
    min_y = min(transformed_corners(:, 2));
    max_y = max(transformed_corners(:, 2));
    transformed_h = max_y - min_y + 1;
    transformed_w = max_x - min_x + 1;

    % Compute the inverse transformation matrix
    inv_T = inv(T);

    % Compute the transformed image
    transformed_img = zeros(transformed_h, transformed_w, class(img));

    for y = 1:transformed_h

        for x = 1:transformed_w
            p = [x + min_x - 1, y + min_y - 1] * inv_T;

            if all(p >= 1) && all(p <= [w h])
                transformed_img(y, x) = interp2(img, p(1), p(2));
            end

        end

    end

end
