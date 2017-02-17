% read image
I = imread('cameraman.jpg');

L = [2, 4, 8, 16, 32, 64, 128]; % levels to test

for i = 1:length(L)
    % get quantized image
    QI = QuantizeImage(I, L(i));

    % display and save quantized image to file
    imshow(QI);
    fname = sprintf('cameraman-%d.png', L(i));
    print(fname, '-dpng');
    
    % compute mean square quantization error
    [m, n] = size(I);
    I = double(I); QI = double(QI);
    E = (I - QI).^2;
    E = sum(E(:))/(m*n);

    % display mean square quantization error
    fprintf('Level %d: MSQE = %g\n', L(i), E);
end