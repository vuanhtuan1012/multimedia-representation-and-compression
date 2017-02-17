function H = calc_entropy(I)
% function CALC_ENTROPY computes the entropy of a grey image
% return the computed value

A = zeros(1, 256); % absolute occurence
[m, n] = size(I);

% count absolute occurence
for i=1:m
    for j=1:n
        A(I(i,j)+1) = A(I(i,j)+1) + 1;
    end
end

% compute relative occurence
L = A > 0;
R = A(L)/(m*n);

I = -log2(R); % compute self information
H = sum(R.*I); % compute entropy