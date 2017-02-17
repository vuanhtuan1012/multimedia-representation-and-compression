% initial signal
f = 6;
T = 1/f; % period
tt = -T/2:T/1000:T/2; % consider signal in 1 period
S = sin(2*pi*f*tt);

% plot signal and save figure to file
figure; plot(tt, S); title('Signal'); 
print('signal.png', '-dpng');

nB = [2, 4, 6]; % bits to quantize

for i = 1:length(nB)
    % get quantized signal
    QS = QuantizeSignal(S, nB(i));
    
    % plot quantized signal and save figure to file
    str = sprintf('Quantized signal with %d bits', nB(i));
    figure; plot(tt, QS); title(str);
    fname = sprintf('signal-%d.png', nB(i));
    print(fname, '-dpng');

    % compute distortion
    d = (QS - S).^2;
    d = sum(d)/length(d);
    fprintf('Quantization in %d bits: Distortion = %.5f\n', nB(i), d);
end