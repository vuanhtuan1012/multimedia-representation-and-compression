% load a color image
I = imread('lezard.jpg');

% compute the entropy in RGB color space
Hrgb = calc_entropy_color(I);
fprintf('H(RGB) = %g\n', Hrgb);

% convert the image in YCbCr color space
Y = rgb2ycbcr(I);

% compute the entropy in YCbCr color space
Hycbcr = calc_entropy_color(Y);
fprintf('H(YCbCr) = %g\n', Hycbcr);