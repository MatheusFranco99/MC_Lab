function [ max,pos] = findmax(v )
% encontra o m�ximo (max)dos m�dulos dos elementos  de uma lista
% e a posi��o (ou posi��es) em que se encontra
n=size(v);
nn=n(2);
max=abs(v(1));
% find maximum
for i=1:nn-1
if abs(v(i+1))>max
max=abs(v(i+1));
end
end
% list of positions 
pos(1:nn)=0;
j=1;
for i=1:nn
    if abs(v(i))==max
        pos(j)=i;
        j=j+1;
    end
end
end

