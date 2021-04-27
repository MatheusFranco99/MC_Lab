function [ T ] = ex2(tol)

b = ones(20,1);
Am = A(20);
x0 = zeros(20,1);

omegas = 0.1:0.1:1.9;
iteracoes = zeros(19,1);

for idx = 1:19
    
    [ xk, it ] = SOR( Am,b,x0,tol,omegas(idx) );
    iteracoes(idx) = it;
    
end

T = table(omegas.',iteracoes,'VariableNames',{'omega','iteracoes'});

end