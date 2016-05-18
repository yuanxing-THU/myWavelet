function [cA,cD] = mydwt(s) 
%
Lo_R = [0.3327,0.8069,0.4599,-0.1350,-0.0854,0.0352];
Hi_R = [0.0352,0.0854,-0.1350,-0.4599,0.8069,-0.3327];

% cA=0;
% cD=0;
l=length(s);
y=zeros(l+10,1);
for i=1:5
    y(i)=s(6-i);
end
y(6:l+5)=s(1:l);
for i=1:5
    y(l+5+i)=s(l+1-i);
end

if mod(l+5,2)==0, up=(l+5)/2;
else up=(l+4)/2;
end

cA=zeros(up,1);
for k=1:up
    cA(k)=Lo_R*y(2*k:2*k+5);
end
cD=zeros(up,1);
for k=1:up
    cD(k)=Hi_R*y(2*k:2*k+5);
end

end

