function [] = ex3c(lst_ex3a)
y = lst_ex3a;
len = length(y);
x = 1000:1000:10000;
O = zeros(4,10);
for k = 1:4
    for j = 1:10
        O(k,j) = y(j)/x(j)^k;
    end
end

figure(1)
plot(x, O(1,:))
figure(2)
plot(x, O(2,:))
figure(3)
plot(x, O(3,:))
figure(4)
plot(x, O(4,:))
%plot(x,O(1,:),x,O(2,:),x,O(3,:),x,O(4,:))

end


