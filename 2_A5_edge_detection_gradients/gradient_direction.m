% Gradient Direction
pkg load image;

function result = select_gdir(gmag, gdir, mag_min, angle_low, angle_high)
    % Find and return pixels that fall within the desired mag, angle range
    result = gmag >= mag_min & angle_low <= gdir & gdir <= angle_high;
endfunction

%% Load and convert image to double type, range [0, 1] for convenience
img = double(imread('../images/octagon.png')) / 255.; 


%% Compute x, y gradients
[gx gy] = imgradientxy(img, 'sobel'); % Note: gx, gy are not normalized

%% Obtain gradient magnitude and direction
[gmag gdir] = imgradient(gx, gy);

%figure, imshow(gmag / (4 * sqrt(2))); % mag = sqrt(gx^2 + gy^2), so [0, (4 * sqrt(2))]
%figure, imshow((gdir + 180.0) / 360.0); % angle in degrees [-180, 180]

%% Find pixels with desired gradient direction
my_grad = select_gdir(gmag, gdir, 1, 30, 60); % 45 +/- 15


% show images
figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,2,1);
imshow(img) % assumes [0, 1] range for double images
title("Gray Image");

subplot(1,2,2);
imagesc(my_grad);
axis('off');
colormap gray;
title("45 Degrees Gradient");