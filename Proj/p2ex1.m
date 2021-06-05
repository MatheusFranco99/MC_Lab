function [x_list,y_list] = p2ex1(a,h)
% input: a (extremo direito do intervalo), h (passo utilizado no metodo)
% output: y_list (lista de aproximacoes de y(x) no intervalo [0,a] com passo h)

% funcao f: y'(x) = f(x,y) 
f = @(x,y) sin(exp(y));

% valores iniciais
xi = 0;
yi = 0;

x_list = zeros(int8(a/h+1),1);
x_list(1) = xi;

y_list = zeros(int8(a/h+1),1);
y_list(1) = yi;

indice = 2;

% metodo de Heun
while(xi < a)

    xiplus1 = xi+h;
    yiplus1 = yi + h/2 * (f(xi,yi) + f(xiplus1,yi + h*f(xi,yi)));

    xi = xiplus1;
    yi = yiplus1;
    
    y_list(indice) = yi;
    x_list(indice) = xi;
    indice = indice + 1;
    
end

end

