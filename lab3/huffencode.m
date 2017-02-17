 % huffencode.m
   %
   % takes a cell-vector and a huffman-table
   % returns a huffman encoded bit-string

   function bitstring = huffencode(input, table)

   bitstring = '';
   for l=1:length(input),
      bitstring = strcat(bitstring,table.code{strcmp(table.val,input{l})}); % omits letters that are not in alphabet
   end;

 