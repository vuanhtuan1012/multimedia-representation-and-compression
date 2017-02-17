function [DecodedSequence, Table] = DecodeLzw(CodedSequence)
% function DecodeLzw decodes a text in LZW format
% return sequence after decoding and dictionary

% decode using LZW
[DecodedSequence, Table] = lzw2norm(CodedSequence);