% Color planes,Select a color plane, display it, inspect values from a row
img = imread('../images/fruits1.jpg');
figure, imshow(img);

% select a row in image
row_no = 480;

disp(size(img));

% Select a color plane
img_red = img(:,:,1);

% show images
figure(1, 'position',[100,100,size(img)(2)*3,size(img)(1)]);

subplot(1,3,1);
imshow(img)
title("Image");

subplot(1,3,2);
imshow(img_red)
[h, w]=size(img_red);

% Plot a line on the selected row
line([0,w], [row_no,row_no], 'Color', 'g', 'LineWidth', 1);
title("Image Red Plane");

% Plot the selected row values
subplot(1,3,3);
plot(img_red(row_no, :));
title("Image Selected Row");