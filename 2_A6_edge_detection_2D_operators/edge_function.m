% Edge Filter

% load image
img = imread('../images/flower1.jpg');

% apply filter
pkg load image;
img_edge = edge(rgb2gray(img), 'canny');

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Image");

subplot(1,2,2);
imagesc(img_edge);
axis('off');
colormap gray;
title("Image Edges");