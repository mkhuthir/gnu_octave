% Find Template 1D function

function index = find_template_1D(t, s)
    pkg load image;
    c = normxcorr2(t,s);
    %disp([1:size(c,2); c]);
    [maxValue rawIndex] = max(c);
    index = rawIndex - size(t,2)+1;
end