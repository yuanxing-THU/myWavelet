function [ C,L ] = mywaveDec(s,N)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明

% C  [An Dn Dn-1...D2 D1]
% L  [LAn LDn LDn-1...LD2 LD1 Ls]


%if N<1 error
l=length(s);
L=l;
[cA,cD] = mydwt(s);
L = [length(cD);L];
C=cD;
if N>1
    for k=2:N
       %assignin('base','cA',cA);
       [cA,cD]=mydwt(cA);
       C=[cD;C];
       L = [length(cD);L];
       
    end
end
C=[cA;C];
L = [length(cA);L];


end

