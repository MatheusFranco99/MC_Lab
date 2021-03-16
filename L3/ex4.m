erros_b = zeros(1,5);
it_b = zeros(1,5);
time_b = zeros(1,5);
erros_f = zeros(1,5);
it_f = zeros(1,5);
time_f = zeros(1,5);

for i=1:5
    f = @(x)x.^(i+1) -(i+1);
    zero = (i+1)^(1/(i+1));
    
    t1 = cputime;
    [res,err,it] = bissecex1(f,0,2,1e-10);
    t2 = cputime;
    erros_b(i) = abs(zero-res)/zero;
    it_b(i) = it;
    time_b(i) = t2-t1;
    
    t1 = cputime;
    [res,err,it] = ex3(f,0,2,1e-10);
    t2 = cputime;
    erros_f(i) = abs(zero-res)/zero;
    it_f(i) = it;
    time_f(i) = t2-t1;
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
figure(3); 
plot(x,time_b)
hold on
plot(x,time_f)
title('tempo')
xlabel('x')
ylabel('tempo')
legend('bissec','falsa posicao')
