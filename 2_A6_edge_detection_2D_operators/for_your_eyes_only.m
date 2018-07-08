% For Your Eyes Only

pkg load image;

% load images
frizzy = imread('../images/frizzy.png');
froomer = imread('../images/froomer.png');

% Find edges in frizzy and froomer images
frizzy_edge = edge(rgb2gray(frizzy),'canny');
froomer_edge = edge(rgb2gray(froomer),'canny');

% Find common edge pixels
common_edge = froomer_edge & frizzy_edge;

% show images
figure(1, 'position',[100,100,size(frizzy)(2)*2.5,size(frizzy)(1)]);
subplot(1,2,1);
imshow(frizzy);
title("frizzy Image");

subplot(1,2,2);
imshow(frizzy_edge);
title("frizzy edges");

figure(2, 'position',[100,100,size(froomer)(2)*2.5,size(froomer)(1)]);
subplot(1,2,1);
imshow(froomer);
title("froomer Image");

subplot(1,2,2);
imshow(froomer_edge);
title("froomer edges");

figure;
imshow(common_edge);
title("Common edges");