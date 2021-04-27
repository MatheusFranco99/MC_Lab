function [y,error_list] = ex2b( n )

lhf = @(x) 1./(1 + 2.*x.^2);

x = -5:0.1:5;

j = 1;
y = zeros(1,101);
error_list = zeros(1,101);
for i = -5:0.1:5
    [y(j)] = ex2a(lhf,-5,5,n,i);
    error_list(j) = abs(feval(lhf,i) - y(j)) / (feval(lhf,i));
    j = j + 1;
end

end

