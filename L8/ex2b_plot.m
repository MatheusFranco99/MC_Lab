function [] = ex2b_plot()

lhf = @(x) 1./(1 + 2.*x.^2);
x = -5:0.1:5;

y = feval(lhf,x);

plot(x,y);

end

