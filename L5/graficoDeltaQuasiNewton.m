
function [] = graficoDeltaQuasiNewton()

% 0.01 0.001 0.0001 0.00001 0.0000001 

x = zeros(1,7);
y = zeros(1,7);
for i = 1:7
    aux = 10^(-i-1);
    x(i) = aux;
    [dummy1,dummy2, y(i)] = QuasiNewton(0.04,@(x)funcaoDoGas(x),aux,1e-12);


semilogx(x,y)
xlabel('delta')
ylabel('iteradas')

end


