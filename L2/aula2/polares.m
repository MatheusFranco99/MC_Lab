function [ r,phi ] = polares( x,y )
% calcula as coordenadas polares do ponto x,y
% no caso de x=0, y>0 ,o argumento é atan(infinito)= pi/2
% no caso de x=0, y<0 ,o argumento é atan(-infinito)=- pi/2
% no caso de x > 0, o argumento é atan(y/x)
% no caso de x < 0, o argumento é atan(y/x)+ pi
r=sqrt(x^2+y^2);
if(x==0)
    phi =sign(y)*pi/2;
else
 if (x>0)
    phi=atan(y/x);
    else
    phi=atan(y/x)+pi;
 end
end
end

