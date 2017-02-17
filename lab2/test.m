% compute entropy of image1.png
I = imread('image1.png');
H1 = calc_entropy(I);

% compute entropy of image2.png
I = imread('image2.png');
H2 = calc_entropy(I);

% compute entropy of image3.png
I = imread('image3.png');
H3 = calc_entropy(I);

% compute entropy of image4.png
I = imread('image4.png');
H4 = calc_entropy(I);

% display results
fprintf('H1 = %g, H2 = %g, H3 = %g, H4 = %g\n', H1, H2, H3, H4);