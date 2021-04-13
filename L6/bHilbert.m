function [ b] = bHilbert( n )
% constroi a matriz de Hilbert de dimens�o n
b = 
for i=1:n
for j=1:n
H(i,j)=1/(i+j-1);
end
end
end

