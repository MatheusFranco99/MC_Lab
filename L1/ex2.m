function [L,U] = ex2()
%L = zeros(10,10);
%U = zeros(10,10);
%for i = 1:10
%    L(i,i) = 2;
%    U(i,i) = 2;
%end
%for i = 1:9
%    L(i+1,i) = -3;
%    U(i,i+1) = -3;
%end

U = diag(ones(1,10).*2) + diag(ones(1,9).*(-3),1)
L = diag(ones(1,10).*2) + diag(ones(1,9).*(-3),-1)
end

