function enseq = EncodeLz77(seq, ws, lab)
% function EncodeLz77 encodes text into the LZ77 format.
% return sequence after encoding

% compute Search Buffer (sb)
sb = ws - lab;
sr = [1, sb]; % index of search range

% initial encoded sequence
enseq = '';
for cur = sr(1):sr(2)
    enseq = strcat(enseq, '<', num2str(0), ',', num2str(0), ...
                    ',', seq(cur), '>');
end

cur = sb + 1; % initial cursor position
L = length(seq);
while cur <= L
    % initial max length and offset
    maxLen = 0;
    of = 0;
    
    for j = sr(2):-1:sr(1)
        % find offset of seq(i) in search buffer
        if seq(j) == seq(cur)
            of_temp = sr(2) - j + 1;
            len = getLength(seq, of_temp, cur);
            % find max length
            if maxLen < len
                maxLen = len;
                of = of_temp;
            end
        end
    end
    cur = cur + maxLen + 1; % move cursor to new position
    sr = sr + maxLen + 1; % change search buffer range
    enseq = strcat(enseq, '<', num2str(of), ',', num2str(maxLen), ...
                    ',', seq(cur-1), '>'); % add triple to enseq
end