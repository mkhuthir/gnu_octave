% Hough demo

pkg load image;

% Read image
img = imread('../images/shapes.jpg');

% Convert to grayscale
img_gray = rgb2gray(img);

% Apply Canny filter to find edges
img_edge = edge(img_gray,'canny');

% Apply hough to find lines
H = houghtf(img_edge);

% Plot hough accumulator
figure, imagesc(H),xlabel('X Data'),ylabel('Y data'),title('Hough accumulator')

peaks = houghpeaks(H,100);
