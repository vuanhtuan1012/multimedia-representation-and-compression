% read image
I = imread('onion.bmp');

L = [2, 4, 8, 16, 32, 64, 128]; % levels to test

for i = 1:length(L)
    QuantizeColorImage(I, L(i));
end