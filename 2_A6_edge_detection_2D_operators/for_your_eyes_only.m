% For Your Eyes Only
pkg load image;

frizzy = imread('../images/frizzy.png');
froomer = imread('../images/froomer.png');
imshow(frizzy);
imshow(froomer);

% TODO: Find edges in frizzy and froomer images
frizzy_edge = edge(rgb2gray(frizzy),'canny');
froomer_edge = edge(rgb2gray(froomer),'canny');
imshow(froomer_edge);
imshow(frizzy_edge);

% TODO: Display common edge pixels
common_edge = froomer_edge & frizzy_edge;
imshow(common_edge);

