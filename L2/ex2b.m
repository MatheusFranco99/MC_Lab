function [lst] = ex2b(n)

lst = zeros(1,n);

for i = 1:n
    [aux,lst(i)] = ex2a(i);
end

end


