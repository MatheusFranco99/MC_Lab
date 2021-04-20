function [ T ] = ex2_2(tol)

b = ones(20,1);
Am = A(20);
x0 = zeros(20,1);

limInf = 1.65;
limSup = 1.8;
step = 0.01;
omegas = limInf:step:limSup;
N = (limSup-limInf)/step + 1;
iteracoes = zeros(int8(N),1);

for idx = 1:N
    
    [ xk, it ] = SOR( Am,b,x0,tol,omegas(idx) );
    iteracoes(idx) = it;
    
end

T = table(omegas.',iteracoes,'VariableNames',{'omega','iteracoes'});

end