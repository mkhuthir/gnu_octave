% Add two images

% read the two images
img1 = imread('../images/flower1.jpg');
img2 = imread('../images/flower2.jpg');

% display the sizes

figure, imshow(img1);
disp('Image 1 size:');
disp(size(img1));

figure, imshow(img2);
disp('Image 2 size:');
disp(size(img2));

% add the two images
img = 0.5 * img1 + 0.5 * img2;

% Display result
figure, imshow(img);
disp('Result Image size:');
disp(size(img));