  % huffdecode.m
   %
   % takes a bit-string and a huffman-tree
   % returns a decoded cell array

   function message = huffdecode(bitstring, tree)

   treepos = tree;
   counter = 1;
   for l=1:length(bitstring)
      if(bitstring(l) == '1')
         treepos = treepos.one;
      else
         treepos = treepos.zero;
      end
      if(isfield(treepos,'val'))
         message{counter} = treepos.val;
         counter = counter+1;
         treepos = tree;
      end
   end
