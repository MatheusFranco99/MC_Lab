f2 = @(x) x.^2 - 2; %zero -> 2^(1/2)
f3 = @(x) x.^3 - 3; %zero -> 3^(1/3)
f4 = @(x) x.^4 - 4; %zero -> 4^(1/4)
f5 = @(x) x.^5 - 5; %zero -> 5^(1/5)
f6 = @(x) x.^6 - 6; %zero -> 6^(1/6)



zero2 = 2^(1/2);
zero3 = 3^(1/3);
zero4 = 4^(1/4);
zero5 = 5^(1/5);
zero6 = 6^(1/6);


%bissecex1
erros_b = zeros(1,5);
it_b = zeros(1,5);
time_b = zeros(1,5);

t1 = cputime;
[res,err,it] = bissecex1(f2,0,2,1e-10);
t2 = cputime;
it_b(1) = it;
erros_b(1) = abs(res-zero2)/zero2;
time_b(1) = (t2-t1)


t1 = cputime;
[res,err,it] = bissecex1(f3,0,2,1e-10);
t2 = cputime;
it_b(2) = it;
erros_b(2) = abs(res-zero3)/zero3;
time_b(2) = (t2-t1)

t1 = cputime;
[res,err,it] = bissecex1(f4,0,2,1e-10);
t2 = cputime;
it_b(3) = it;
erros_b(3) = abs(res-zero4)/zero4;
time_b(3) = (t2-t1)

t1 = cputime;
[res,err,it] = bissecex1(f5,0,2,1e-10);
t2 = cputime;
it_b(4) = it;
erros_b(4) = abs(res-zero5)/zero5;
time_b(4) = (t2-t1)


t1 = cputime;
[res,err,it] = bissecex1(f6,0,2,1e-10);
t2 = cputime;
it_b(5) = it;
erros_b(5) = abs(res-zero6)/zero6;
time_b(5) = (t2-t1)



% ex3

erros_f = zeros(1,5);
it_f = zeros(1,5);
time_f = zeros(1,5);


t1 = cputime;
[res,err,it] = ex3(f2,0,2,1e-10);
t2 = cputime;
it_f(1) = it;
erros_f(1) = abs(res-zero2)/zero2;
time_f(1) = (t2-t1)

t1 = cputime;
[res,err,it] = ex3(f3,0,2,1e-10);
t2 = cputime;
it_f(2) = it;
erros_f(2) = abs(res-zero3)/zero3;
time_f(2) = (t2-t1)

t1 = cputime;
[res,err,it] = ex3(f4,0,2,1e-10);
t2 = cputime;
it_f(3) = it;
erros_f(3) = abs(res-zero4)/zero4;
time_f(3) = (t2-t1)

t1 = cputime;
[res,err,it] = ex3(f5,0,2,1e-10);
t2 = cputime;
it_f(4) = it;
erros_f(4) = abs(res-zero5)/zero5;
time_f(4) = (t2-t1)

t1 = cputime;
[res,err,it] = ex3(f6,0,2,1e-10);
t2 = cputime;
it_f(5) = it;
erros_f(5) = abs(res-zero6)/zero6;
time_f(5) = (t2-t1)

x = 1:1:5;

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
