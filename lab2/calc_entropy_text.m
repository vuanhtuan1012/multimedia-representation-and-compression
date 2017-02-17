function Val_entropy = calc_entropy_text(data)
%     Compute the entropy of a vector of data
%      return the computed value

% 
    MyData = data;
    FreqMyData = histc(MyData,unique(MyData));
    Size = length(FreqMyData);
    
%    Entropy calculation
    total = 0;
    totalSymbol = length(MyData);
    for i=1:Size;   
       prob = FreqMyData(i) / totalSymbol;
       if (prob ~= 0) 
           total = total -  prob*(log(prob)/log(2));
       end
   end
   Val_entropy = total;
   
end

