erros_b = zeros(1,5);
it_b = zeros(1,5);
erros_f = zeros(1,5);
it_f = zeros(1,5);

for i=1:5
    f = @(x)x.^(i+1) -(i+1);
    zero = (i+1)^(1/(i+1));
    
    [res,err,it] = bissecex1(f,0,2,1e-10);
    erros_b(i) = abs(zero-res)/zero;
    it_b(i) = it;
    
    [res,err,it] = ex3(f,0,2,1e-10);
    erros_f(i) = abs(zero-res)/zero;
    it_f(i) = it;
end;
    
    
x = 1:5;

plot(x,erros_b)
hold on
plot(x,erros_f)
hold off
title('erros relativos')
xlabel('x')
ylabel('erros relativos')
legend('bissec','falsa posicao')
figure(2); 
plot(x,it_b)
hold on
plot(x,it_f)
title('iteracoes')
xlabel('x')
ylabel('iteracoes')
legend('bissec','falsa posicao')
