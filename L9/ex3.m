function [a1,it] = ex3( a0,tol )
% input: a0 aproximacao inicial e tol tolerancia
% output: a1 aproximacao da solucao, it numero de iteracoes

% metodo de Newton

% a_{k+1} = delta_ak + a_k onde
% delta_ak e a solucao do sistema J(a_k) * delta_ak = -F(a_k)

xi = [0,0.5,1,1.5,2,2.5,3];
ti = [-3,-1.89,-1.03,-0.36,0.16,0.57,0.88];

F = ex1(ti,xi,a0(1),a0(2),a0(3)).';
J = ex2(ti,xi,a0(1),a0(2),a0(3));

deltaA = J\(-F);
a1 = deltaA.' + a0;

% usamos a norma euclidiana para determinar o erro de delta_ak
erro = norm(deltaA);

it = 1;

while (erro > tol)
    a0 = a1;
    F = ex1(ti,xi,a0(1),a0(2),a0(3)).';
    J = ex2(ti,xi,a0(1),a0(2),a0(3));
    deltaA = J\(-F);
    a1 = deltaA.' + a0;
    erro = norm(deltaA);
    it = it + 1;
end

end