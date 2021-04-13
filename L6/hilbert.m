function [ H] = hilbert( n )
% constroi a matriz de Hilbert de dimensão n
for i=1:n
for j=1:n
H(i,j)=1/(i+j-1);
end
end
end

