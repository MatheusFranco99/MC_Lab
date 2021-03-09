function [res] = Fib(n)

if n == 1
    res = 1
else if n == 2
    res = 1
    else 
       a = 1;
       b = 1;
       while n > 2
           aux = a + b;
           b = a;
           a = aux;
           n = n-1;
       end
       res = a;
    end
end

end