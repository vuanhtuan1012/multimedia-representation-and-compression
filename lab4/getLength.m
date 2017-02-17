function len = getLength(seq, of, cur)
% function getLength finds the length of matched string in sequence
% start from an offset in search buffer and cursor position

% of : offset in search buffer
% cur : cursor position

% convert offset to index in sequence
ind = cur - of;
len = 0; % initial length
while (len+cur < length(seq)) && (seq(ind+len) == seq(cur+len))
    len = len + 1;
end