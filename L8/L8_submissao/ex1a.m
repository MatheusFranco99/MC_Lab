function [P] = ex1a( xi,fi,y )
% input: xi (vetor de valores de x), fi (vetor de valores de f(xi), y valor
% a determinar a aproximacao x = f^{-1}(y)
% output: aproximacao de x

% fi como e monotona, calculamos a diferenca entre o ultimo valor da lista e
% o primeiro para ordenar fi de forma crescente.
if(fi(1) > fi(size(fi)))
    fi = flip(fi);
    xi = flip(xi);
end

[P] = interpol(fi,xi,y);

end
