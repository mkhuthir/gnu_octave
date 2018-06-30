% This will us scale function defined in scale.m file
% Read image
img = imread('../images/fruits1.jpg');
result = scale(img, 2.5);

% Show original and result images
figure, imshow(img);
figure, imshow(result);
