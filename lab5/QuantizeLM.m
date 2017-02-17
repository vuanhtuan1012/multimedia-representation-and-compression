function [QI, msqe] = QuantizeLM(I, depth, L, eps)
% function QuantizeLM is to quantize an image
% using Lloyd-Max algorithm
% return quantized image, mean square quantization error

% non-uniform quantization with Lloyd-Max algorithm
[~, QI] = lloyd(I, depth, L, eps);

% compute mean square quantization error (MSQE)
msqe = (QI-I).^2;
[m, n] = size(I);
msqe = sum(msqe(:))/(m*n);