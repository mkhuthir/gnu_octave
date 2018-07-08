% Edge Demo

pkg load image;

% Read image
img = imread('../images/flower1.jpg');
%figure, imshow(img), title('Original Image');

% Convert to grayscale
img_gray = rgb2gray(img);
%figure, imshow(img_gray), title('Image in grayscale')

% Create a gaussian filter
h = fspecial('gaussian',[11,11], 4);

% Show filter
%figure, surf(h);

% Apply filter
img_fltr = imfilter(img_gray, h);
%figure, imshow(img_fltr), title('Image Filtered')

% Method 1: 

% Shift Image Right one pixel
img_r = img_fltr;
img_r(:,[2:(end)]) = img_r(:, [1:(end-1)]);

% Shift Image Left one pixel
img_l =img_fltr;
img_l(:,[1:(end-1)]) = img_l(:, [2:end]);

% Difference between right and left shifted images
img_diff = double(img_r)-double(img_l);
%figure, imshow(img_diff), title('Image difference')