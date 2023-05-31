% image created by Zhengxiao Wu, added due to the requirement of the course
function BUPT_write_pgm(img, filename, format, author)
    % Open the file for writing
    fid = fopen(filename, 'w');

    % Write the PGM header
    if strcmp(format, 'P2')
        fprintf(fid, 'P2\n# Created by %s\n%d %d\n%d\n', author, size(img, 2), size(img, 1), 255);
        fprintf(fid, '%d\n', img');
    else
        fprintf(fid, 'P5\n# Created by %s\n%d %d\n%d\n', author, size(img, 2), size(img, 1), 255);
        fwrite(fid, img', 'uint8');
    end

    % Close the file
    fclose(fid);
end
