function DecodedSequence = DecodeHuffman(CodedSequence)
% function DecodeHuffman decodes a coded sequence in Huffman coding
% return DecodedSequence

% define alphabet with probability
A = {'1', '2', '3', '4', '5', '6', '7', '8'};
P = [0.05, 0.15, 0.05, 0.2, 0.1, 0.25, 0.05, 0.15];

% get tree
[Tree, ~] = hufftree(A, P);

% get decoded sequence
DecodedSequence = huffdecode(CodedSequence, Tree);