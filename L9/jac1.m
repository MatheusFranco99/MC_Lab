function [jacob] = jac1( ti,xi, a0,a1,a2 )
% calcula a matriz jacobiana da função F
% do problema que consta do guião da aula 9
%   contendo as segundas derivadas de Q
dimensions=size(xi);
n=max(dimensions);
jacob(1:3,1:3)=0;
%%%%%%%%%%%%%%% 2ª derivada em ordem a a0 
jacob(1,1)=0;
for i=1:n
jacob(1,1)= jacob(1,1)+2*(cos(a1*ti(i)))^2 ;
end
    %%%%%%%%%%%%%%%  derivada mista em ordem a a0 e a a1 
jacob(1,2)=0;
for i=1:n
jacob(1,2)= jacob(1,2)-4*a0*(cos(a1*ti(i)))*sin(a1*ti(i))*ti(i) ;
jacob(1,2)=jacob(1,2)-2*sin(a1*ti(i))*ti(i)*(a2-xi(i));
end
jacob(2,1)=jacob(1,2);

     %%%%%%%%%%%%%%%  derivada mista em ordem a a0 e a a2 
jacob(1,3)=0;
for i=1:n
jacob(1,3)= jacob(1,3)+2*cos(a1*ti(i)) ;
end
    jacob(3,1)=jacob(1,3);
%%%%%%%%%%%%%%% 2ª derivada em ordem a a1 
jacob(2,2)=0;
for i=1:n
jacob(2,2)= jacob(2,2)-2*a0^2*ti(i)^2* ((cos(a1*ti(i)))^2-sin(a1*ti(i))^2);
jacob(2,2)=jacob(2,2)- 2*cos(a1*ti(i))*a0*ti(i)^2*(a2-xi(i));
end
     %%%%%%%%%%%%%%%  derivada mista em ordem a a1 e a a2 
jacob(2,3)=0;
for i=1:n
jacob(2,3)= jacob(2,3)-2*a0*ti(i)*sin(a1*ti(i)) ;
end
    jacob(3,2)=jacob(2,3);
      %%%%%%%%%%%%%%%  segunda derivada em ordem a a2 
jacob(3,3)=2*n;
end
  
   