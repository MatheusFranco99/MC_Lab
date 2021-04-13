function [T] = ex2a()

cond_ex1 = zeros(14,1);
cond_eig = zeros(14,1);

epsilon = 1e-12;

for n = 2:15
    H = hilbert(n);
    
    % numero de condicao pelo ex1
    cond_ex1(n-1) = ex1b(H,n,epsilon);
    
    % numero de condicao pela funcao eig
    cond_eig(n-1) = condByEig(H,n);
    
end

erros_relativos = zeros(14,1);
for i = 1:14
   erros_relativos(i) = abs(cond_eig(i) - cond_ex1(i)) / cond_eig(i);
end

T = table(cond_ex1,cond_eig,erros_relativos,'VariableNames',{'Cond ex1','Cond eig','Erros Relativos'});

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