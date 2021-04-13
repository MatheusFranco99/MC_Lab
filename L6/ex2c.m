function [] = ex2c()

Nmax = 15;

logcond = zeros(Nmax-1,1);
cond = zeros(Nmax-1,1);

x = zeros(Nmax,Nmax);

epsilon = 1e-12;

for n = 2:(Nmax)
    H = hilbert(n);
    
    % numero de condicao
    cond(n-1) = ex1b(H,n,epsilon);
    logcond(n-1) = log(cond(n-1));
    
end

logcondOverN = zeros(Nmax-1,1);
for i = 1:(Nmax-1)
   logcondOverN(i) = logcond(i) / (i+1);
end

exponenciais = 2:15;
for i = 1:(Nmax-1)
   exponenciais(i) = exp(exponenciais(i));
end



x = 2:Nmax;

%plot(x,cond);
%hold on
%plot(x,exponenciais);
%plot(x,logcondOverN)

%plot(x,logcond)
%hold on
%plot(x,2:Nmax)



end

% Input: recebe matrix H e de dimensao nxn
% Output: retorna cond2(H) usando funcao eig do MatLab
function [cond] = condByEig(H,n)
    eigenValues = eig(H);
    maxi = -1;
    for i = 1:n
        maxi = max(maxi,abs(eigenValues(i)));
    end
    a = maxi;
    
    eigenValues = eig(inv(H));
    maxi = -1;
    for i = 1:n
        maxi = max(maxi,abs(eigenValues(i)));
    end
    b = maxi;
    
    cond = a * b;
    
end