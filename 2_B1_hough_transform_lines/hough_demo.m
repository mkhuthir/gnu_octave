% Hough demo

pkg load image;

% Read image
img = imread('../images/line.png');

% Convert to grayscale
img_gray = rgb2gray(img);

% Apply Canny filter to find edges
img_edge = edge(img_gray,'canny');

% Apply hough to find lines
H = houghtf(img_edge);

% Plot hough accumulator
figure, imagesc(H),title('Hough accumulator')

