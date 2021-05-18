function [ap] = ex2a(f,a,b,n)
% input: f funcao a aproximar o integral, a limite inferior do intervalo, b
% limite superior do intervalo, n numero de sub-intervalos a considerar
% output: ap aproximacao do integral

ap = 0;

% passo
h = (b-a)/n;

% formula vista nos slides:
% ap = h * ( f(a) / 2 + f(b) / 2 + sum_{i = 1}^{n-1} f(x_i) )
for i=1:n-1
    ap = ap + feval(f,a + h*i);
end

ap = ap + feval(f,a)/2 + feval(f,b)/2;
ap = ap * h;

end
