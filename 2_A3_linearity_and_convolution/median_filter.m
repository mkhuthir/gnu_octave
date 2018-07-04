% Apply a Median Filter
pkg load image;

% Read an image
img = imread('../images/saturn.png');

% Add salt & papper noise
noisy_img = imnoise(img, 'salt & pepper',0.02);

% Apply a median filter to clean noise
median_img = medfilt2(noisy_img);

% show images
figure(1, 'position',[100,100,size(img)(2)*3.5,size(img)(1)]);

subplot(1,3,1);
imshow(img)
title("Original Image");

subplot(1,3,2);
imshow(noisy_img);
title("Salt & Pepper Noise");

subplot(1,3,3);
imshow(median_img);
title("Median Filter");