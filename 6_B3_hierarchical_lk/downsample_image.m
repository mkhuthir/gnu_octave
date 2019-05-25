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

img = imread('../images/penny-farthing.png');
imshow(img);

img_d = downsample(img);    % 1/2 size
img_d = downsample(img_d);  % 1/4 size
img_d = downsample(img_d);  % 1/8 size

img_bd = blur_downsample(img);     % 1/2 size
img_bd = blur_downsample(img_bd);  % 1/4 size
img_bd = blur_downsample(img_bd);  % 1/8 size

img_d  = imresize(img_d, size(img));   % resize image to original size
img_bd = imresize(img_bd, size(img));  % resize image to original size

figure(1, 'position',[100,100,size(img)(2)*5,size(img)(1)])
subplot(1,3,1), imshow(img)   , title('Original Image');
subplot(1,3,2), imshow(img_d) , title('downsampled');
subplot(1,3,3), imshow(img_bd), title('blurred & downsampled');
