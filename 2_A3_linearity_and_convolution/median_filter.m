% Apply a Median Filter
pkg load image;

% Read an image
img = imread('../images/saturn.png');
figure, imshow(img);

% Add salt & papper noise
noisy_img = imnoise(img, 'salt & pepper',0.02);
figure, imshow(noisy_img);

% Apply a median filter to clean noise
median_img = medfilt2(noisy_img);
figure, imshow(median_img);