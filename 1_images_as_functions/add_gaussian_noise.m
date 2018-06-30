% Add gaussian noise to image
img = imread('../images/peppers.png');
figure, imshow(img);

% Generate noise
sigma = 15;
noise = randn(size(img)).*sigma;

% Add to image
figure, imshow(img+noise);