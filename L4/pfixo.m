function [z,nit ,dif] = pfixo( lhf,x0, eps )
% par�metros de entrada :
% lhf - fun��o iteradora; x0 - aproxima��o inicial 
%eps - toler�ncia de erro;
% par�metros de sa�da: z -aproxima��o do ponto fixo;
% nit-n�mero de itera��es
% estimativa de erro
x1=feval(lhf,x0);
%%%% em cada itera��o, as vari�veis x0 e x1 cont�m , respectivamente,
%%% a antiga e a nova aproxima��o da raiz.
%%% dif � a diferen�a entre iteradas consecutivas
 % Nota: o erro absoluto pode ser estimado atrav�s de dif, se for
% conhecida a constante L<1 (constante de Lipschitz da fun��o no intervalo)
nit=1;
dif=abs(x1-x0);
while dif>eps && nit<100
    nit=nit+1;
    x1=feval(lhf,x0);
    dif=abs(x1-x0);
    x0=x1;
end
z=x1;
if(nit>99)
    disp('a condicao de paragem nao foi satisfeita ')
end
end