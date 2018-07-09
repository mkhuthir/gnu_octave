% Hough demo

pkg load image;

% Read image
img = imread('../images/flower1.jpg');

% Convert to grayscale
img_gray = rgb2gray(img);

% Apply Canny filter
img_edge = edge(img_gray,'canny');

figure(1);
subplot(1,3,1), imshow(img)     , title('Original Image');
subplot(1,3,2), imshow(img_gray), title('Image in grayscale');
subplot(1,3,3), imshow(img_edge), title('Canny Filter');