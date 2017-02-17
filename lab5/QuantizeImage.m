function QI = QuantizeImage(I, level)
% function QuantizeImage quantizes an image into a level
% follow uniform quantization
% return quantized image

% work only with gray scale image
if size(I,3) > 1
    return
end

% find bounderies
B = linspace(0, 256, level+1);

% compute reconstruction values
V = (B(1:level) + B(2:level+1))/2;

% quantization
[m, n] = size(I);
QI = I;
I = double(I);
for i = 1:m
    for j = 1:n
        ind = floor(I(i,j)*level/256) + 1; % interval index
        QI(i,j) = V(ind);
    end
end