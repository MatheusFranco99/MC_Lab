function [] = graficoDevFuncaoDoGas(a,b)

step = 0.0005;

x = a:step:b;
y = devFuncaoDoGas(x);

yzero = zeros(1,(b-a)/step+1);


plot(x,yzero)
hold on
plot(x,y)
xlabel('volume')
ylabel('derivada da funcao do gas')

end

