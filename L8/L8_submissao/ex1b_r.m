function [ap1,ap2,ap3] = ex1b_r(n)

f = ex1b_f;

% intervalo de -0.5 a -0.2 com n pontos
x1 = -0.5:((-0.2+0.5)/(n-1)):-0.2;
f1 = f(x1);

% intervalo de 0.3 a 0.6 com n pontos
x2 = 0.3:((0.6-0.3)/(n-1)):0.6;
f2 = f(x2);

% intervalo de 5.7 a 6 com n pontos
x3 = 5.7:((6-5.7)/(n-1)):6;
f3 = f(x3);

ap1 = ex1a(x1,f1,0);
ap2 = ex1a(x2,f2,0);
ap3 = ex1a(x3,f3,0);


end
