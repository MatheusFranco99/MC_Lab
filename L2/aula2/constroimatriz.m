%%%%%%%%%%%%% Este script constroi uma matriz 10 X10 com a diagonal
%%%%%%%%%%%%% principal constitu�da por '1' e as duas diagonais adjacentes
%%%%%%% constitu�das por -1
A=eye(10);
A=A+diag(-ones(9,1),1);
A=A+diag(-ones(9,1),-1)
