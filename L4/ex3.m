function [z,nit ,dif, ord1, ord2, ord3] = ex3( g,x0, eps )

% nova funcao iteradora com base em g(x)
G = @(x) x - ((x-g(x))^2)/(g(g(x)) -2*g(x) +x);

x1 = feval(G,x0);

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
    x1 = feval(G,x0);
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