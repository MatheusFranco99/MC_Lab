function [ F1 ] = ex1 (ti,xi,a0,a1,a2 )
% input: valores da tabela ti e xi, parametros a0,a1,a2 da funcao
% g(a0,a1,a2,r) = a0 + a1*exp(a2*r)
% output: F1 =
% (partial_Q/partial_a0,partial_Q/partial_a1,partial_Q/partial_a2)

dimensions=size(xi);                                     
n=max(dimensions);                                
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a0
F1(1)= 0;
for i=1:n
    F1(1)=F1(1) + 2 * (ti(i) - a0 - a1*exp(a2*xi(i)))*(-1);
end
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a1
F1(2)= 0;
for i=1:n
    F1(2)=F1(2) + 2 * (ti(i) - a0 - a1*exp(a2*xi(i)))*(-exp(a2*xi(i)));
end
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a2
F1(3)= 0;
for i=1:n
    F1(3)=F1(3) + 2 * (ti(i) - a0 - a1*exp(a2*xi(i)))*(-a1*xi(i)*exp(a2*xi(i)));
end
end
