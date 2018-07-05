% Gaussian Filter

pkg load image;

% Build your filter
f_size  = 31; % size of the kernal is odd to have center point
f_sigma = 3;
h = fspecial('gaussian', f_size, f_sigma);

% Draw filter surface and section
figure(1, 'position',[100,100,size(img)(2)*3,size(img)(1)]);

subplot(1,2,1);
surf(h);
title("Gaussian Filter Surface");

subplot(1,2,2);
imagesc(h);
title("Gaussian Filter Section");

% load image
img = imread('../images/saturn.png');

% Add noise to image
n_sigma = 10;
noise = randn(size(img)) .* n_sigma;
img_noise = img + noise;

% Use filter to clean noise from image
img_f = imfilter(img_noise,h);

% show images
figure(2, 'position',[100,100,size(img)(2)*3,size(img)(1)]);

subplot(1,3,1);
imshow(img)
title("Image");

subplot(1,3,2);
imshow(img_noise);
title("Gaussian Noise");

subplot(1,3,3);
imshow(img_f);
title("Gaussian Filter");