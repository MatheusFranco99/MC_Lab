function [ans] = ex5()

%Mx = w

v1 = [0,1,0,1];
v2 = [1,2,3,4];
v3 = [1,0,1,0];
v4 = [0,1,1,1];

m = [v1;v2;v3;v4];
m = transpose(m);

ans = m\[1;1;1;1];


end

