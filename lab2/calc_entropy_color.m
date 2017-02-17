function H = calc_entropy_color(I)
% function CALC_ENTROPY_COLOR computes the entropy of a color image
% return the computed value

H = 0;
for i=1:3
    H = H + calc_entropy(I(:,:,i));
end