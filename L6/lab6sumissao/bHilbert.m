function [ b] = bHilbert( n )
% retorna vetor coluna b^(n) onde b_i^(n) = 
b = zeros(n,1);
for i=1:n
    for j=1:n
        b(i) = b(i) + (1/(i+j-1));
    end
end
end

