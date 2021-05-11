function [ap] = ex2a(f,a,b,n)
ap = 0;

h = (b-a)/n;
for i=1:n-1
    ap = ap + feval(f,a + h*i);
end

ap = ap + feval(f,a)/2 + feval(f,b)/2;
ap = ap * h;

end
