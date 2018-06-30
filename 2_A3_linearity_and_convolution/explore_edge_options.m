% Explore Edge Options
pkg load image;

% Read an image
img = imread('../images/fruits2.jpg');
figure, imshow(img);

% Create Gaussian filter
filter_size     = 21;
filter_sigma    = 3;
filter = fspecial('gaussian', filter_size, filter_sigma);

% Apply filter - pick one type of edge option-
%img_f = imfilter(img, filter, 0);
%img_f = imfilter(img, filter, 255);
%img_f = imfilter(img, filter, 'circular');
%img_f = imfilter(img, filter, 'replicate');
img_f = imfilter(img, filter, 'symmetric');

figure, imshow(img_f);