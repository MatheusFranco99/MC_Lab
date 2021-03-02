function [X] = ex6()
[L,U] = ex2();
%UX = L
%X = inv(U)*L;
X = U\L;
end

