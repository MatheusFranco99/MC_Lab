function [times] = ex3a()

times = [];

for n = 1000:1000:10000
    matrix = zeros(n,n);
    matrix = matrix + eye(n).*2;
    matrix = matrix + diag(ones(1,n-1).*(-1),1)  + diag(ones(1,n-1).*(-1),-1);
    t0 = cputime;
    eig(matrix);
    t1 = cputime;
    times(end+1) = t1-t0;
end
end


