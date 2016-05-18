function [X] = mywrcoef( o,C,L,N )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
Lo_D = [0.0352 -0.0854 -0.1350 0.4599 0.8069 0.3327];
Hi_D = [-0.3327 0.8069 -0.4599 -0.1350 0.0854 0.0352];

if o=='a'
    n=length(L)-2;
    F1 = Lo_D;
    X=C(1:L(1));
else
    n=N;
    F1 = Hi_D;
    X=C(sum(L(1:length(L)-1-n))+1:sum(L(1:length(L)-n)));
end
% if n>length(L)-2 error

nmin = length(L)-n;
X = myupsconv(X,F1,L(nmin+1));

for k=nmin+2:length(L),X = myupsconv(X,Lo_D,L(k));end

end

