function [jacob] = ex2( ti,xi, a0,a1,a2 )
% input: valores da tabela ti e xi, parametros a0,a1,a2 da funcao
% g(a0,a1,a2,r) = a0 + a1*exp(a2*r)
% output: matriz jacobiana da funcao F

dimensions=size(xi);
n=max(dimensions);
jacob(1:3,1:3)=0;

%%%%%%%%%%%%%%% 2 derivada em ordem a a0 
jacob(1,1)=0;
for i=1:n
jacob(1,1)=jacob(1,1) + 2 * 1;
end
%%%%%%%%%%%%%%%  derivada mista em ordem a a0 e a a1 
jacob(1,2)=0;
for i=1:n
    jacob(1,2)=jacob(1,2) + 2 * (exp(a2*xi(i)));
end
jacob(2,1)=jacob(1,2);
%%%%%%%%%%%%%%%  derivada mista em ordem a a0 e a a2 
jacob(1,3)=0;
for i=1:n
    jacob(1,3)=jacob(1,3) + 2 * (xi(i)* a1*exp(a2*xi(i)));
end
    jacob(3,1)=jacob(1,3);
    
%%%%%%%%%%%%%%% 2 derivada em ordem a a1 
jacob(2,2)=0;
for i=1:n
    jacob(2,2)=jacob(2,2) + 2 * (exp(a2*xi(i)))*(exp(a2*xi(i)));
end
%%%%%%%%%%%%%%%  derivada mista em ordem a a1 e a a2 
jacob(2,3)=0;
for i=1:n
    jacob(2,3) = jacob(2,3) + 2 * (ti(i) - a0 - a1*exp(a2*xi(i)))*(-xi(i) * exp(a2*xi(i)));
    jacob(2,3) = jacob(2,3) + 2 * (- xi(i)*a1*exp(a2*xi(i)))*(-exp(a2*xi(i)));
end
    jacob(3,2)=jacob(2,3);
%%%%%%%%%%%%%%%  segunda derivada em ordem a a2
for i=1:n
    jacob(3,3) = jacob(3,3) + 2 * (- xi(i)*a1*exp(a2*xi(i)))*(-a1*xi(i)*exp(a2*xi(i)));
    jacob(3,3) = jacob(3,3) + 2 * (ti(i) - a0 - a1*exp(a2*xi(i)))*(-a1*xi(i)*xi(i)*exp(a2*xi(i)));
end

end
  
   