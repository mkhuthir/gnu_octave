% Downsample an image
1;  % Octave script guard

function img_d = downsample(img)
    img_d=img(1:2:end,1:2:end);
end

function img_bd = blur_downsample(img)
    img_bd=imfilter(img,fspecial("gaussian",[5,5]))(1:2:end,1:2:end);
end

% Test code:
pkg load image;

img = imread('penny-farthing.png');
imshow(img);

img_d = downsample(img);    % 1/2 size
img_d = downsample(img_d);  % 1/4 size
img_d = downsample(img_d);  % 1/8 size

img_bd = blur_downsample(img);     % 1/2 size
img_bd = blur_downsample(img_bd);  % 1/4 size
img_bd = blur_downsample(img_bd);  % 1/8 size

imshow(imresize(img_d, size(img)));   % view downsampled image in original size
imshow(imresize(img_bd, size(img)));  % compare with blurred & downsampled
