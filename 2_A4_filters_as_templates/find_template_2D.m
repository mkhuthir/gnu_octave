% Find Template 2D function

function [yIndex xIndex] = find_template_2D(template, img)
    pkg load image;
    c = normxcorr2(template, img);
    
    [yRaw xRaw] = find(c==max(c(:)));
    yIndex = yRaw - size(template, 1)+1;
    xIndex = xRaw - size(template, 2)+1;
end
