% Add two images

% read the two images
img1 = imread('../images/flower1.jpg');
img2 = imread('../images/flower2.jpg');

% display the sizes

disp('Image 1 size:');
disp(size(img1));

disp('Image 2 size:');
disp(size(img2));

% add the two images
img = 0.5 * img1 + 0.5 * img2;

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,3,1);
imshow(img1)
title("Image 1");

subplot(1,3,2);
imshow(img2)
title("Image 2");

subplot(1,3,3);
imshow(img)
title("Image 1 + Image 2");