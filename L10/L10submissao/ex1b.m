function [Q] = ex1b( m,n, lf )

[a0,a,g,Q] = trigono1(m,n,lf);


x(1:n) = 0;
fx(1:n)= 0;
h = 2*pi/n;
gx(1:n)= 0;

for i=1:n
    x(i)  = -pi + i*h;
    fx(i) = feval(lf,x(i));
end



plot(x,g);
hold on;
plot(x,fx);

end
