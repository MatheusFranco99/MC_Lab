function [ F1 ] =function1 (ti,xi,a0,a1,a2 )
% 
%  problema1  do guião da aula 9; função não linear      
%  (primeiras derivadas de Q )
% recebe os valores de ti, xi, a0,a1, a2 
dimensions=size(xi);                                     
n=max(dimensions);                                
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a0
F1(1)= 0;
for i=1:n
    F1(1)=F1(1)+2*(a0*cos(a1*ti(i))+a2-xi(i))*cos(a1*ti(i));
end
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a1
F1(2)= 0;
for i=1:n
    F1(2)=F1(2)-2*(a0*cos(a1*ti(i))+a2-xi(i))*a0*sin(a1*ti(i))*ti(i);
end
%%%%%%%%%%%%%%%%%%%% derivada em ordem a a2
F1(3)= 0;
for i=1:n
    F1(3)=F1(3)+2*(a0*cos(a1*ti(i))+a2-xi(i));
end
end
