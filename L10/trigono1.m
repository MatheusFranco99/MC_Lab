function [a0, a, g, Q] = trigono1( m,n, lf )
% obt�m os coeficientes da aproxima��o trigonom�trica da fun��o lf
%

h=2*pi/n;
a(1:2*m)=0;
for i=1:n
    x(i)=-pi+i*h;
    fi(i)=feval(lf,x(i));
end
sum0=0;
for i=1:n
   sum0=sum0+fi(i);
end
a0=sum0/n;
for k=1:m
    sum1=0;
    sum2=0;
    for j=1:n
        sum1 = sum1+fi(j)*cos(k*x(j));
        sum2=sum2+ fi(j)*sin(k*x(j));
    end
    a(k)=sum1*2/n;
    a(m+k)=sum2*2/n;
end

g(1:n) = 0;
for i=1:n
   g(i) = a0;
   for j=1:m
       g(i) = g(i) + a(j)   *cos(j*x(i));
       g(i) = g(i) + a(j+m) *sin(j*x(i));
   end
end

Q = 0;
for k=1:n
    Q = Q + (g(k) - fi(k))^2;
end


end