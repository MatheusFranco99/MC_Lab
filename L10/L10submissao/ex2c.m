function [tn,t2n,erroE2n] = ex2c(f,a,b)
% input: f funcao a aproximar o integral, a limite inferior do intervalo, b
% limite superior do intervalo, n numero de sub-intervalos a considerar
% output: tn vetor de aproximacoes pelo ex2a, t2n vetor de aproximacoes pelo ex2b, erroE2n
% vetor das diferencas entre I e as aproximacoes de t2n

% lista dos n's
n = [10 20 40 80 160];

% inicializacao
tn(1:5)      = 0;
t2n(1:5)     = 0;
erroE2n(1:5) = 0;

% valor teorico
I = exp(1) - 1;

% calculo para cada n
for i=1:5
    tn(i)       = ex2a(f,a,b,n(i));
    t2n(i)      = ex2b(f,a,b,n(i));
    erroE2n(i)  = abs(I-t2n(i));
end

end
