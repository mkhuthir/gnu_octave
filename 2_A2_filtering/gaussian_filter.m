% Gaussian Filter

pkg load image;

% Build your filter
f_size  = 31; % size of the kernal is odd to have center point
f_sigma = 2;
h = fspecial('gaussian', f_size, f_sigma);

% Draw filter surface and section
figure, surf(h);
figure, imagesc(h);

% load image
img = imread('../images/saturn.png');
figure, imshow(img);

% Add noise to image
n_sigma = 10;
noise = randn(size(img)) .* n_sigma;
img_noise = img + noise;
figure, imshow(img_noise);

% Use filter to clean noise from image
img_f = imfilter(img_noise,h);
figure, imshow(img_f);
