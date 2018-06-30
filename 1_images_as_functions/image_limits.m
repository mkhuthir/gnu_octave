% Use LOW HIGH in imshow()
img = imread('../images/peppers.png');
figure, imshow(img);

% convert to gray
pkg load image;
img_gray = rgb2gray(img);
figure, imshow(img_gray);

% apply color limits
LOW     = 100;
HIGH    = 250;
figure, imshow(img_gray, [LOW, HIGH]);
