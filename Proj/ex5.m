function [coef_x,coef_y,V] = ex5()
% output: coeficientes do polinomio interpolador de x(t), coeficientes do
% polinomio interpolador de y(t), matriz de Vandermonde

% matriz de Vandermonde
V = ex1(3);

% matriz inversa da matriz de Vandermonde
invV = inv(V);

% solucao dos sistemas V * coef_x = [x(t_i)]
coef_x = invV * [0;2;0;2];
% solucao dos sistemas V * coef_y = [y(t_i)]
coef_y = invV * [0;2;3;4];

end

