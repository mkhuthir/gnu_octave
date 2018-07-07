% This will us scale function defined in scale.m file
% Read image
img = imread('../images/fruits1.jpg');
result = scale(img, 2.5);

% Show original and result images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Image");

subplot(1,2,2);
imshow(result)
title("Image * 2.5");
