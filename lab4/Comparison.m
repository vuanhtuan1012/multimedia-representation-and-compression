% compute compression ratio of text file
% in LZW algorithm in order to compare
% with the one in Deflate algorithm

fileId = fopen('text.txt'); % read file text.txt
C = textscan(fileId, '%c'); % do not count spaces, end of line
seq = C{1};
[enseq, table] = EncodeLzw(seq); % encode with LZW algorithm
bits = length(dec2bin(length(table))); % number of bits used
r = length(seq)*8/bits/length(enseq); % compute compression ratio
fprintf('Compression ratio r = %g\n', r);