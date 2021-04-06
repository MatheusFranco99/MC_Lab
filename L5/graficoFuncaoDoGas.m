function [] = graficoFuncaoDoGas(a,b)

step = 0.00005;

x = a:step:b;
y = funcaoDoGas(x);

yzero = zeros(1,(b-a)/step+1);


plot(x,yzero)
hold on
plot(x,y)
xlabel('volume')
ylabel('funcao do gas')

end
