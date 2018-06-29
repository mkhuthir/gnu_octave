% Test blend function:
img1 = imread('../images/flower1.jpg');
img2 = imread('../images/flower2.jpg');

result = blend(img1, img2, 0.75);
imshow(result); % note: will result in an error if blend() returns empty or incorrect value