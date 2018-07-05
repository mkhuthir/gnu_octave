% Find template 2D test code

% Load an image
img  = imread('../images/tablet.png');

% Cut any part out of the image
part = img(75:165, 150:185);

% Use normxcorr to locate the part in the image
[y x] = find_template_2D(part, img);
disp([y x]);


% show images
figure(1, 'position',[100,100,size(img)(2)*3,size(img)(1)]);

subplot(1,3,1);
imshow(img)
title("Full Image");

subplot(1,3,2);
imshow(part);
title("Selected Portion");

% Plot location of part on image
subplot(1,3,3);
colormap('gray'),
imagesc(img);
hold on;
[w, h]=size(part);
rectangle('Position',[x y h w],'linewidth', 2, 'EdgeColor', 'green');
axis('off');
title("Portion Location");
hold off;