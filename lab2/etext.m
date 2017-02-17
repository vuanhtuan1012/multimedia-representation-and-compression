% assign sentences
t1 = 'a';
t2 = 'ab';
t3 = 'aab';
t4 = 'Hello how are you ?';
t5 = 'DIES IST EIN KURZER TEXT';

% compute the entropy
H1 = calc_entropy_text(t1);
H2 = calc_entropy_text(t2);
H3 = calc_entropy_text(t3);
H4 = calc_entropy_text(t4);
H5 = calc_entropy_text(t5);
%length(unique(t4)), length(unique(t5)), length(t4), length(t5)
% display the result
fprintf('H1 = %g, H2 = %g, H3 = %g, H4 = %g, H5 = %g\n', H1, H2, H3, H4, H5);