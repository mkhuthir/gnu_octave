% convert to gray
img = imread('../images/peppers.jpg');
figure, imshow(img);

pkg load image;
img_gray = rgb2gray(img);
figure, imshow(img_gray);