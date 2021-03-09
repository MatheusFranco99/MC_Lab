function [lst] = ex1c(n)

m = [ 1 1; 1 0];

v = [1;1];
lst = zeros(1,n);
lst(1) = 1;
lst(2) = 2;
for i = 3:n
    v = m*v;
    lst(i) = v(1,1);
end


end

