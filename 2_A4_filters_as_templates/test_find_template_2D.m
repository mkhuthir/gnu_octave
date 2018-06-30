% Find template 2D test code

% Load an image
img  = imread('../images/tablet.png');
figure, imshow(img);

% Cut any part out of the image
part = img(75:165, 150:185);
figure, imshow(part);

% Use normxcorr to locate the part in the image
[y x] = find_template_2D(part, img);
disp([y x]);

% Plot location of part on image
figure, colormap('gray'), imagesc(img);
hold on;
[w, h]=size(part);
rectangle('Position',[x y h w],'linewidth', 2, 'EdgeColor', 'green');
hold off;
