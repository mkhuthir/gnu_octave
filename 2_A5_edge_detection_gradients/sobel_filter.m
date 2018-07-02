% Sobel Filter

pkg load image;

% Create filter
filt = fspecial('sobel');

% load image
img = imread('../images/saturn.png');

% apply filter
img_f = imfilter(double(img), filt);

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Gray Image");

subplot(1,2,2);
imagesc(img_f);
axis('off');
colormap gray;
title("Sobel Filter");

