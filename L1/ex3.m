function [L,U] = ex3()
[L,U] = ex2();

%aux = L(3,:);
%L(3,:) = L(7,:);
%L(7,:) = aux;

%aux = L(:,4);
%L(:,4) = L(:,8);
%L(:,8) = aux;

%aux = U(3,:);
%U(3,:) = U(7,:);
%U(7,:) = aux;

%aux = U(:,4);
%U(:,4) = U(:,8);
%U(:,8) = aux;

[L(3,:),L(7,:)] = swap(L(3,:),L(7,:));
[L(:,4),L(:,8)] = swap(L(:,4),L(:,8));

[U(3,:),U(7,:)] = swap(U(3,:),U(7,:));
[U(:,4),U(:,8)] = swap(U(:,4),U(:,8));


end