% image created by Zhengxiao Wu, added due to the requirement of the course
function BUPT_write_ppm(img, filename, format, author)
    % Open the file for writing
    fid = fopen(filename, 'w');

    % Convert to uint8 if necessary
    if ~isa(img, 'uint8')
        img = uint8(img * 255);
    end

    % Mirror the image along the diagonal
    img = permute(img, [2 1 3]);

    % Write the PPM header
    if strcmp(format, 'P3')
        fprintf(fid, 'P3\n# Created by %s\n%d %d\n%d\n', author, size(img, 1), size(img, 2), 255);
        fprintf(fid, '%d %d %d\n', permute(img, [3 1 2]));
    else
        fprintf(fid, 'P6\n# Created by %s\n%d %d\n%d\n', author, size(img, 1), size(img, 2), 255);
        fwrite(fid, permute(img, [3 1 2]), 'uint8');
    end

    % Close the file
    fclose(fid);
end
