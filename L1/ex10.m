function [] = ex10()

%x = linspace(0,10,1000+1);
%y = x.*exp(-x);

%plot(x,y)

x = linspace(0,3,500);
y1 = x.*exp(-x);
y2 = zeros(1,500)+0.25;

plot(x,y1,x,y2)



end

