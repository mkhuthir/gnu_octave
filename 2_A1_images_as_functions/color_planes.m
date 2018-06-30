% Color planes
img = imread('../images/fruits1.jpg');
figure, imshow(img);

disp(size(img));

% TODO: Select a color plane, display it, inspect values from a row
img_red = img(:,:,1); % selecting red plane
figure, imshow(img_red);

% Plot the 150th row values
figure, plot(img_red(150, :));
