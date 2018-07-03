% Add gaussian noise to image

% load image
img = imread('../images/peppers.jpg');

% Generate noise
sigma = 15;
noise = randn(size(img)).*sigma;

% Add to image
img_noise = img + noise;

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Color Image");

subplot(1,2,2);
imagesc(img_noise);
axis('off');
colormap gray;
title("Gaussian Noise");