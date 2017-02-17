function QS = QuantizeSignal(S, nbits)
% function QuantizeSignal quantize a sinusoid signal
% follow uniform quantization
% return quantized signal

% initial
min = -1; max = 1; % min, max of sinusoid signal
nL = power(2, nbits); % number of levels   
B = linspace(min, max, nL+1); % bounderies
V = (B(1:nL) + B(2:nL+1))/2; % reconstruction values
QS = S; % quantized signal

% quantization
for j = 1:length(S)
    ind = floor((S(j) - min)*nL/(max - min)); % interval index
    if ind < nL
        ind = ind + 1;
    end
    QS(j) = V(ind);
end