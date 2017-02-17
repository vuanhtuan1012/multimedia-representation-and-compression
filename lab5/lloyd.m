function [msqe,Q] = lloyd(I,depth,L,eps)

range = 2^depth;
step = range/L;
boundV = 0;
dist(1) = 0;
bound = zeros(1,L+1);
bound(L+1)= range;
table = zeros(1,L);

for i=1:L
    table(i) = (boundV + step)/2;
    boundV = boundV + step;
end

for k=2:100
    % 2- Find the decision boundaries
    for i=2:L
        bound(i) = (table(i-1) + table(i))/2;  
    end
    
    % 3- Compute the distortion
    dist(k)=0;
    for i=1:L
     for x=bound(i):bound(i+1)
        dist(k) = dist(k) + (x-table(i))^2 * fpdf(x,range);
     end 
    end
    
    % 4- Stop?
    if (dist(k) - dist(k-1) < eps)
        break;
    end
    
    % 5- Find the new reconstruction values
    for i=1:L
        val1=0;
        val2=0;
        for x=bound(i):bound(i+1)
            val1 = val1 + x * fpdf(x,range);
        end 
        for x=bound(i):bound(i+1)
            val2 = val2 + fpdf(x,range);
        end 
        table(i) = val1 / val2;
    end
%     
%     table 
%     bound
%     dist
end


% assign the new values
[X,Y,dim] = size(I); 
msqe = 0;

for x=1:X
    for y=1:Y
       for i=1:L 
           if (I(x,y) >= bound(i) && I(x,y) < bound(i+1))
               Q(x,y) = table(i);
               msqe = msqe + ((I(x,y) - Q(x,y))^2 * fpdf(Q(x,y),range));
               
           end
       end
    end
end

end 

function f = fpdf(x, range)
f=1./range; 
end