% Edge method 1: Difference between right and left shifted images

pkg load image;

% Read image
img = imread('../images/flower1.jpg');

% Convert to grayscale
img_gray = rgb2gray(img);

% Create a gaussian filter
h = fspecial('gaussian',[11,11], 4);

% Apply filter to smooth image
img_fltr = imfilter(img_gray, h);

% Shift Image Right one pixel
img_r = img_fltr;
img_r(:,[2:(end)]) = img_r(:, [1:(end-1)]);

% Shift Image Left one pixel
img_l =img_fltr;
img_l(:,[1:(end-1)]) = img_l(:, [2:end]);

% Difference between right and left shifted images
img_diff = double(img_r)-double(img_l);

figure(1);
subplot(2,3,1), imshow(img)     , title('Original Image');
subplot(2,3,2), imshow(img_gray), title('Image in grayscale');
subplot(2,3,3), surf(h)         , title('Gaussian Filter');
subplot(2,3,4), imshow(img_fltr), title('Image Filtered');
subplot(2,3,5), imshow(img_diff), title('Image difference');
