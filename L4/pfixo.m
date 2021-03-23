function [z,nit ,dif] = pfixo( lhf,x0, eps )
% parâmetros de entrada :
% lhf - função iteradora; x0 - aproximação inicial 
%eps - tolerância de erro;
% parâmetros de saída: z -aproximação do ponto fixo;
% nit-número de iterações
% estimativa de erro
x1=feval(lhf,x0);
%%%% em cada iteraçáo, as variáveis x0 e x1 contêm , respectivamente,
%%% a antiga e a nova aproximação da raiz.
%%% dif é a diferença entre iteradas consecutivas
 % Nota: o erro absoluto pode ser estimado através de dif, se for
% conhecida a constante L<1 (constante de Lipschitz da função no intervalo)
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