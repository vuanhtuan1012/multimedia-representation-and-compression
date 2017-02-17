function [EncodedSequence, Table] = EncodeHuffman(Sequence)
% function EncodeHuffman encodes a text into the Huffman coding
% return EncodedSequence and Table

% define alphabet with probability
A = {'1', '2', '3', '4', '5', '6', '7', '8'};
P = [0.05, 0.15, 0.05, 0.2, 0.1, 0.25, 0.05, 0.15];

% get table
[~, Table] = hufftree(A, P);

% get encoded sequence
EncodedSequence = huffencode(Sequence, Table);