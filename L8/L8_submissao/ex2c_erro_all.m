function [] = ex2c_erro_all( )
% constroi o erro absoluto dos polinomios de graus n = 5,10,15,20.
lhf = @(x) 1./(1 + 2.*x.^2);

x = -5:0.01:5;

j = 1;
y = zeros(1,501);
error_list_5 = zeros(1,501);
error_list_10 = zeros(1,501);
error_list_15 = zeros(1,501);
error_list_20 = zeros(1,501);
for i = -5:0.01:5
    [y(j)] = equidist(lhf,-5,5,5,i);
    error_list_5(j) = (abs(feval(lhf,i) - y(j)));
    
    [y(j)] = equidist(lhf,-5,5,10,i);
    error_list_10(j) = (abs(feval(lhf,i) - y(j)));
    
    [y(j)] = equidist(lhf,-5,5,15,i);
    error_list_15(j) = (abs(feval(lhf,i) - y(j)));
    
    [y(j)] = equidist(lhf,-5,5,20,i);
    error_list_20(j) = (abs(feval(lhf,i) - y(j)));
    j = j + 1;
end


plot(x,error_list_5);
hold on;
plot(x,error_list_10);
hold on;
plot(x,error_list_15);
hold on;
plot(x,error_list_20);


end

