% Crop an image
img = imread('../images/fruits1.jpg');
disp(size(img));  % check size

% Crop 120x120 all 3 planes (RGB)
cropped = img(1:120, 1:120, :);
disp(size(cropped));

% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img)
title("Image");

subplot(1,2,2);
imshow(cropped)
title("Cropped Image");
