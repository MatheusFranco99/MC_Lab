%%%%%% Este script calcula uma estimativa da unidade de arredondamento do sistema
%%%% Para isso soma-se `a constante 1 potências negativas de 2 
%%%%% (2^-1,2^-2,...). Para-se quando 1 + 2^-k arredondar para 1
%%%% 
%%%%% 
inc=0.5;
while(1+inc~=1)
    inc=inc/2;
end
disp(' unidade de arredondamento')
disp(inc)
