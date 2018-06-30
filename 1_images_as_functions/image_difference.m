% Image difference
img1 = imread('../images/flower1.jpg');
img2 = imread('../images/flower2.jpg');

% Absolute difference
diff1 = abs(img1-img2);
figure, imshow(diff1);

%Use image package
pkg load image;

diff2 = imabsdiff(img1, img2);
figure, imshow(diff2);