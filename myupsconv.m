function y = myupsconv( x,f,l)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
z =  zeros(2*length(x)-1,1);
for k=1:length(x)
    z(2*k-1) = x(k);
end
z=[zeros(5,1);z;zeros(5,1)];
y=zeros(length(z)-5,1);
for k=1:length(z)-5
    y(k)=f*z(k:k+5);
end
y=y(5:4+l);

end

