function [lambda1] = ex1a(A,n,epsilon)
% Input: matrix A nxn, dimensao N, tolerancia epsilon
% Output: aproximacao do valor proprio dominante


% x0 inicial
% Nota: norma do maximo de x0 = 1 pois x0(1) = 1 e o maximo por linha
x = zeros(n,1);
x(1) = 1;

% calculamos duas iteracoes ja que o erro depende de dois valores de lambda
z = A*x;
i = absMaxIndex(x,n);
lambda0 = z(i) / x(i);
x = z./lambda0;

z = A*x;
i = absMaxIndex(x,n);
lambda1 = z(i) / x(i);
x = z./lambda1;

it = 2;

while(abs(lambda1 - lambda0) < epsilon)
    lambda0 = lambda1;
    z = A*x;
    i = absMaxIndex(x,n);
    lambda1 = z(i) / x(i);
    x = z./lambda1;
    it = it + 1;
end


end


% recebe vetor linha ou coluna e dimensao
% retorna indice com maior valor de modulo
function [i] = absMaxIndex(x,n)

    i = 1;
    for j = 1:n
        if(abs(x(j)) > abs(x(i)))
            i = j;
        end
    end
end
