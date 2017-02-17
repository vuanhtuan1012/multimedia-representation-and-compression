L = {'Cameraman16x16.tif', 'Cameraman.tif', 'text.tif'};

for i = 1:length(L)
    % get image
    I = imread(L{i});

    % find encoded sequence of image
    S = RunLengthCoding(I);

    % compute compression ratio
    [m, n] = size(I);
    r = m*n/length(S);

    % display result
    fprintf('Compression ratio of %s = %g\n', L{i}, r);
end