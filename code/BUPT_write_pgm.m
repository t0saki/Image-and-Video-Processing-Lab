% image created by Zhengxiao Wu
function BUPT_write_pgm(img, filename, format, author)
    % Open the file for writing
    fid = fopen(filename, 'w');

    % Get the max value of the image
    max_val = max(img(:));

    % Write the PGM header
    if strcmp(format, 'P2')
        fprintf(fid, 'P2\n# Created by %s\n%d %d\n%d\n', author, size(img, 2), size(img, 1), max_val);
        fprintf(fid, '%d\n', img');
    else
        fprintf(fid, 'P5\n# Created by %s\n%d %d\n%d\n', author, size(img, 2), size(img, 1), max_val);
        fwrite(fid, img', 'uint8');
    end

    % Close the file
    fclose(fid);
end
