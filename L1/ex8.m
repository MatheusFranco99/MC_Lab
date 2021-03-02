function [] = ex8()

%x = -1:0.04:1;
x1 = linspace(-1,1,(1-(-1))/0.04+1);
y1 = sin(x1.^2)./(x1.^2+1);

x2 = linspace(1,2,1/0.01+1);
y2 = exp((x2.^3-1).^(1/2)).*(x2+1);

x3 = linspace(0,1,1/0.02+1);
y3 = log(cos(x3))+x3.^2+1;

%plot(x1,y1,x2,y2,x3,y3)
%plot(x1,y1);
%plot(x2,y2);
%plot(x3,y3);

end

