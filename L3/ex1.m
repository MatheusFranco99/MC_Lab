f2 = @(x) x.^2 - 2; %zero -> 2^(1/2)
f3 = @(x) x.^3 - 3; %zero -> 3^(1/3)
f4 = @(x) x.^4 - 4; %zero -> 4^(1/4)
f5 = @(x) x.^5 - 5; %zero -> 5^(1/5)
f6 = @(x) x.^6 - 6; %zero -> 6^(1/6)


%bissecex1

[res,err,it] = 
