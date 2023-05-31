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
        data = fscanf(fid, '%d', [dims(1) * 3, dims(2)]);
    else
        data = fread(fid, [dims(1) * 3, dims(2)], 'uint8');
    end

    % Convert the pixel data to a matrix
    img = zeros(dims(2), dims(1), 3);
    img(:, :, 1) = reshape(data(1:3:end, :), dims(2), dims(1))';
    img(:, :, 2) = reshape(data(2:3:end, :), dims(2), dims(1))';
    img(:, :, 3) = reshape(data(3:3:end, :), dims(2), dims(1))';

    % Normalize the image
    img = double(img) / double(maxval);

    % Close the file
    fclose(fid);
end
