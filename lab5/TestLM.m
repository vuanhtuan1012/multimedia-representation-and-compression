% read image
I = imread('cameraman.jpg');
I = im2double(I);

% initial epsilon
eps = 0.01;

for i = 1:7
    depth = i; % number of used bits
    l = 2^i; % level
    [QI, msqe] = QuantizeLM(I, depth, l, eps);
    
    % display and save quantized image to file
    figure; imshow(QI);
    fname = sprintf('cameraman-%d-%d.png', depth, l);
    print(fname, '-dpng');
    
    % dispaly MSQE
    fprintf('#bits = %d, #level = %d, eps = %g: MSQE = %g\n', ...
            depth, l, eps, msqe);
end