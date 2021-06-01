function [coef_x,coef_y,B] = ex5b()
% output: coeficientes do polinomio interpolador de x(t), coeficientes do
% polinomio interpolador de y(t), matriz de Vandermonde

% matriz de Vandermonde
B = ex2(3);

% matriz inversa da matriz de Vandermonde
invB = inv(B);

% solucao dos sistemas V * coef_x = [x(t_i)]
coef_x = invB * [0;2;0;2];
% solucao dos sistemas V * coef_y = [y(t_i)]
coef_y = invB * [0;2;3;4];

end

