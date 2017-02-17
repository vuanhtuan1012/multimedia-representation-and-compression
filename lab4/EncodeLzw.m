function [EncodedSequence, Table] = EncodeLzw(sequence)
% function EncodeLzw encodes text into the LZW format.
% return sequence after encoding, dictionary

% convert sequence to uint8
s = uint8(sequence);

% encode using LZW
[EncodedSequence, Table] = norm2lzw(s);