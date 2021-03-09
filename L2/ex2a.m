function [orb,len] = ex2a(n)

orb = [n];

while n ~= 1
    if mod(n,2) == 0
        n = n / 2;
    else
        n = 3 * n + 1;
    end
    orb(end+1) = n;
end
len = length(orb);
end


