% image created by Zhengxiao Wu
function img = BUPT_read_pgm(filename)
    % Open the file for reading
    fid = fopen(filename, 'r');

    % Read the PGM header
    header = fgetl(fid);

    if ~strcmp(header, 'P2') && ~strcmp(header, 'P5')
        error('Invalid PGM format');
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
    if strcmp(header, 'P2')
        data = fscanf(fid, '%d', [dims(1), dims(2)]);
    else
        data = fread(fid, [dims(1), dims(2)], 'uint8');
    end

    % Convert the pixel data to a matrix
    img = uint8(data');

    % Close the file
    fclose(fid);
end
