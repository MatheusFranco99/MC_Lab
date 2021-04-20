function [m] = A(n)
m = diag(ones(n,1).*2) + diag(ones(n-1,1),1) + diag(ones(n-1,1),-1);
end

