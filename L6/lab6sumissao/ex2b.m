function [differences,media] = ex2b()
% constroi o grafico da funcao log (cond (Hn) )
% retorna lista de diferencas e media das diferencas (exceto os dois
% ultimos valores)


Nmax = 15;

logcond = zeros(Nmax-1,1);
cond = zeros(Nmax-1,1);

epsilon = 1e-12;

for n = 2:(Nmax)
    H = hilbert(n);
    
    % numero de condicao
    cond(n-1) = ex1b(H,n,epsilon);
    logcond(n-1) = log(cond(n-1));
    
end


differences = zeros(Nmax-2,1);
for i = 1:(Nmax-2)
   differences(i) = logcond(i+1)-logcond(i);
end

media = 0;
for i = 1:(Nmax-2 - 2)
   media = media + differences(i);
end
media = media/(Nmax-2 - 2);

x = 2:Nmax;
plot(x,logcond)

end
