function S = RunLengthCoding(I)
% function RunLengthCoding encodes a black and white image to a sequence.
% return encoded sequence

[m, n] = size(I);
S = blanks(0); % initial encoded sequence

for i = 1:m
    % initial a line
    isFirst = true; % check first block
    color = 1; j = 1;
    while (j <= n)
        color = I(i, j); % get color of first pixel
        counter = 1; % initial counter
        j = j + 1;

        % next pixel has same color
        % start a color block
        while (j <= n) && (I(i, j) == color)
            counter = counter + 1;
            j = j + 1;
        end
        % end of a color block or reach end of line
        
        % first color block is black
        if (color == 0) && (isFirst)
            S = AddHuffCode(S, 1, 1); % add code white 0
            isFirst = false;
        end
        
        % add code of color block
        S = AddHuffCode(S, color, counter+1);
    end
    S = AddHuffCode(S, color, -1); % end of line
end