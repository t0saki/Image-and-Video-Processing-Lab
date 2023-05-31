% image created by Zhengxiao Wu, added due to the requirement of the course
function img = BUPT_read_ppm(filename)
    % Open the file for reading
    fid = fopen(filename, 'r');

    % Read the PPM header
    header = fgetl(fid);

    if ~strcmp(header, 'P3') && ~strcmp(header, 'P6')
        error('Invalid PPM format');
    end

    % Skip # comments
    line = fgetl(fid);

    while strcmp(line(1), '#')
        line = fgetl(fid);
    end

    dims = sscanf(line, '%d', 2);
    line = fgetl(fid);
    maxval = sscanf(line, '%d', 1);

    % Read the pixel data
    if strcmp(header, 'P3')
        data = fscanf(fid, '%d', [3, dims(1) * dims(2)]);
    else
        data = fread(fid, [3, dims(1) * dims(2)], 'uint8');
    end

    % Convert the pixel data to a matrix\
    img = zeros(dims(1), dims(2), 3);
    for i = 1:dims(1) * dims(2)
        img(i) = data(1, i);
        img(i + dims(1) * dims(2)) = data(2, i);
        img(i + 2 * dims(1) * dims(2)) = data(3, i);
    end

    % Normalize the image
    img = double(img) / double(maxval);

    % Mirror the image along the diagonal
    img = permute(img, [2 1 3]);

    % Close the file
    fclose(fid);
end
