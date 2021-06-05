function[T] = p2ex2C(a)
% input: a (extremo direito do intervalo [0,a])
% output: tabela com os h_i's, as respetivas aproximacoes e as aproximacoes
% de C


h = 0.1;

numero_de_iteracoes = 20;

hs = zeros(numero_de_iteracoes,1);
aproximacoes = zeros(numero_de_iteracoes,1);


i = 1;

while i < numero_de_iteracoes
    
    % iteramos h_{i+1} = h_i/2
    
    % calculamos a aproximacao pelo metodo de Heun ( parte II exercicio 1 )
    
    [x,approx] = p2ex1(a,h);
    hs(i) = h;
    aproximacoes(i) = approx(a/h+1);
    
    i = i + 1;
    h = h / 2;
end

% Calculamos aproximacoes de C pela formula:
% C = |(y_{i+1} - y_i) / (h_{i+1}^2 - h_i^2)|

approx_C = zeros(numero_de_iteracoes,1);

i = 1;
while i < numero_de_iteracoes - 1
    approx_C(i) = abs((aproximacoes(i+1) - aproximacoes(i))/(hs(i+1)*hs(i+1) - hs(i)*hs(i)));
    i = i + 1;
end
approx_C(i) = 0;


% retorna uma tabela com os valores de h, das aproximacoes e de C

T = table(hs,aproximacoes,approx_C,'VariableNames',{'h','aproximacao','C'});
