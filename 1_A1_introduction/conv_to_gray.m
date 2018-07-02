% convert to gray

% load image
img = imread('../images/peppers.jpg');

% convert
pkg load image;
img_gray = rgb2gray(img);

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Color Image");

subplot(1,2,2);
imagesc(img_gray);
axis('off');
colormap gray;
title("Gray Image");