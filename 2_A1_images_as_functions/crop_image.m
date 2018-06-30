% Crop an image
img = imread('../images/fruits1.jpg');
figure, imshow(img);

disp(size(img));  % check size

% Crop 500x500 all 3 planes (RGB)
cropped = img(1:500, 1:500, :);
figure, imshow(cropped);

% TODO: Find out cropped image size
disp(size(cropped));