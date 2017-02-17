% Test Lz77 with the sequence in the exercise
fprintf('1. Case of the exercise\n');
seq = 'cabracadabrarrarrad'; % sequence to encode
fprintf('Sequence to encode:\n%s\n', seq);
ws = 13; % window size
lab = 6; % look ahead buffer

% encode into LZ77 format
enseq = EncodeLz77(seq, ws, lab);
fprintf('Encoded sequence:\n%s\n', enseq);

% compute the length of encoded sequence
% count only 3 characters: offset, length, and symbol
x = length(enseq)/7;
enLen = x*(8 + length(dec2bin(ws-lab)) + length(dec2bin(lab)));

% compute compression ratio
r = length(seq)*8/enLen;
fprintf('Compression ratio r = %g\n\n', r);

% Test LZ77 with file text.txt
fprintf('2. Case of text file\n');
fileId = fopen('text.txt');
C = textscan(fileId, '%c'); % do not count spaces, end of line
seq = C{1};
ws = 63; lab = 3; % window size and look ahead buffer

% encode into LZ77 format
enseq = EncodeLz77(seq, ws, lab);

% compute the length of encoded sequence
% count only 3 characters: offset, length, and symbol
x = length(enseq)/7;
enLen = x*(8 + length(dec2bin(ws-lab)) + length(dec2bin(lab)));

% compute compression ratio
r = length(seq)*8/enLen;
fprintf('Compression ratio r = %g\n', r);