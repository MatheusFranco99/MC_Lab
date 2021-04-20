function [T] = ex5(A)


omegas = 0.1:0.1:1.9;
vpMax = zeros(19,1);

for idx = 1:19
    vp = eig(ex4(A,omegas(idx)));
    for i = 1:size(A)
        vp(i) = abs(vp(i));
    end
    vpMax(idx) = max(vp);
end

T = table(omegas',vpMax,'VariableNames',{'omegas','raio espectral de Cw'});

end

