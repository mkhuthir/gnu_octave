
pkg load image;

% Create filter
filt = fspecial('sobel');

% load image
img = imread('../images/saturn.png');
figure, imshow(img)

% apply filter
img_f = imfilter(double(img), filt);
figure, imagesc(img_f);
colormap gray;

