function [lst] = ex1a(n)

lst = zeros(1,n);
lst(1) = 1;
lst(2) = 1;
for i = 3:n
    lst(i) = lst(i-1) + lst(i-2);
end

end


