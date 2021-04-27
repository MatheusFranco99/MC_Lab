function [T] = ex5_extended(A,limInf,limSup,step)

omegas = limInf:step:limSup;
num = (limSup - limInf)/step + 1;
num = int8(num);
vpMax = zeros(num,1);

for idx = 1:num
    vp = eig(ex4(A,omegas(idx)));
    for i = 1:size(A)
        vp(i) = abs(vp(i));
    end
    vpMax(idx) = max(vp);
end

T = table(omegas',vpMax,'VariableNames',{'omegas','raio espectral de Cw'});

end

