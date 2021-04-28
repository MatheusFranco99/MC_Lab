function [] = ex1b_grafico(a,b,step)

x = a:step:b;

f = ex1b_f();

y = f(x);

plot(x,y);
hold on;
plot(x,x.*(0));

end
