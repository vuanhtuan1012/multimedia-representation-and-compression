% load 2 images
I1 = imread('bus0010.png');
I2 = imread('bus0011.png');

% compute image difference
I3 = I2 - I1;

% compute entropy of 3 images
H1 = calc_entropy(I1);
H2 = calc_entropy(I2);
H3 = calc_entropy(I3);

% display the result
fprintf('H1 = %g, H2 = %g, H3 = %g\n', H1, H2, H3);
imshow(I3);