% load the image lena.png
I = imread('lena.png');

% create smooth version of this image
S = imfilter(I, fspecial('average', 5));

% add noise to the original image
N = imnoise(I, 'gaussian', 0.1);

% compute entropy of the 3 images
H = calc_entropy(I);
Hs = calc_entropy(S);
Hn = calc_entropy(N);

% display the result
subplot(1, 3, 1); imshow(S); title('Smoothed version');
subplot(1, 3, 2); imshow(I); title('Original image');
subplot(1, 3, 3); imshow(N); title('Noisy version');
fprintf('H = %g, Hs = %g, Hn = %g\n', H, Hs, Hn);