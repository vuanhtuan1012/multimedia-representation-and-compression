% message to encode
S = {'1', '3', '3', '7', '1', '5', '4', '5', '1', '5', '5', ...
    '1', '3', '5', '7', '8', '6', '3', '4', '7'};
% display the message
fprintf('Message:\n%s\n', strjoin(S, ','));

% encode message
[E, T] = EncodeHuffman(S);
% display the result
fprintf('Encoded sequence:\n%s\n', E);

% compute compression ratio
r = length(S)*8/length(E);
% display the result
fprintf('Compression Ratio = %g\n', r);

% add sequence '01010' to the encoded sequence
E = strcat(E, '01010');
% display sequence to decode
fprintf('Sequence to decode:\n%s\n', E);

% decode the the sequence E
D = DecodeHuffman(E);
% display the result
fprintf('Decoded sequence:\n%s\n', strjoin(D, ','));