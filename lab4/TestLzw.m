% sequence to encode
s = 'wabba_wabba_wabba_wabba_woo_woo_woo';
% display sequence to encode
fprintf('Message to encode:\n%s\n', s);

% Encode LZW
[e, t] = EncodeLzw(s);
% display encoded sequence
x = strtrim(cellstr(num2str(e'))');
fprintf('Encoded sequence:\n%s\n', strjoin(x, ','));

% display encoded sequence to convert in 8-bit format.
fprintf('Encoded sequence to convert in 8-bit format:\n%s\n', char(e));

% display dictionary
fprintf('Dictionary:\n');
for i = 257:length(t)-1
    fprintf('%s,', t{i});
end
fprintf('%s\n', t{end});

% Decode LZW
[d, t] = DecodeLzw(e);

% display the result
fprintf('Decoded Sequence:\n%s\n', char(d));
fprintf('Dictionary:\n');
for i = 257:length(t)-1
    fprintf('%s,', t{i});
end
fprintf('%s\n', t{end});