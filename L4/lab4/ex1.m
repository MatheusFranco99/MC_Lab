function [z,nit ,dif, ord1, ord2, ord3] = ex1( lhf,x0, eps )
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

% lista das iteradas x_k da funcao lhf
z = [ x0 ];

% lista das sucessoes c_{p,k} para p=1,2,3 respetivamente
ord1 = [];
ord2 = [];
ord3 = [];

nit=1;
dif=abs(x1-x0);
i  = 1;
while dif>eps && nit<100
    nit=nit+1;
    x1=feval(lhf,x0);
    z(end+1) = x1;
    dif=abs(x1-x0);
    if(nit >= 3)
        ord1(end+1) = abs(z(i+2) - z(i+1))/(abs(z(i+1)-z(i)));
        ord2(end+1) = abs(z(i+2) - z(i+1))/(abs(z(i+1)-z(i))^2);
        ord3(end+1) = abs(z(i+2) - z(i+1))/(abs(z(i+1)-z(i))^3);
        i = i + 1;
    end
    x0=x1;
        
end
if(nit>99) % conclui-se que o metodo diverge nestas condicoes
    disp('a condicao de paragem nao foi satisfeita ')
end
end