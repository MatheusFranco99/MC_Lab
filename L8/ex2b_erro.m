function [y] = ex2b_erro( n )

lhf = @(x) 1./(1 + 2.*x.^2);

x = -5:0.1:5;

j = 1;
y = zeros(1,101);
for i = -5:0.1:5
    [y(j)] = ex2a(lhf,-5,5,n,i);
    j = j + 1;
end

plot(x,y);

end

