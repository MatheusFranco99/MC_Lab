function [ap] = ex2b(f,a,b,n)
% input: f funcao a aproximar o integral, a limite inferior do intervalo, b
% limite superior do intervalo, n numero de sub-intervalos a considerar
% output: ap aproximacao do integral

% formula dada no enunciado
ap = (4 * ex2a(f,a,b,2*n) - ex2a(f,a,b,n) )/3;
end
