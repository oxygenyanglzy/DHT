function psnrvalue = colorpsnr(original,unzip)
%% ����ԭʼͼ����źŹ���
A = double(original);
B = double(unzip);

%% ����MSE

[m,n] = size(A);
[m1,n1] = size(B);
if m~=m1||n~=n1
    error('ͼ���С��һ��');
end
sum=0;
for level=1:3
    msevalue = 0;
    for i = 1:m
        for j = 1:m
            msevalue = msevalue+(A(i,j,level)-B(i,j,level))^2;
        end
    end
    msevalue = msevalue/(m*m);
    if msevalue == 0
        error('ͼ����ȫ��ͬ');
    end

    %% �����ֵ�����
    value = 255^2/msevalue;
    value = 10*log10(value);
sum=sum+value;
end
psnrvalue=sum/3;
