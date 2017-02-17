function QuantizeColorImage(I, level)
% function QuantizeColorImage quantize a RGB image
% by using function rgb2ind with option 'nodither'

% quantization
[QI, map] = rgb2ind(I, level, 'nodither');

% display quantized image and save to file
imshow(QI, map);
filename = sprintf('onion-%d.png', level);
print(filename, '-dpng');