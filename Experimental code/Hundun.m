function  M=Hundun( image,crypt)
%crypt=1����ʾ���ܣ�cyrpt=2,
% A_encry=gongg();
%   �˴���ʾ��ϸ˵��
initial_value = [0.001,0.002,9.69];
[~,~,A] = Lorenz(initial_value);
% ������ʼʱ�̵����ݶ��Ƚ�С������޳���ʼʱ�̵�����
A = A(100:end);
% ��һ����������
A_normal = (A-min(A))./(max(A)-min(A));
% ���Ʒ�ΧΪ[0,255]
A_uint8 = uint8(A_normal*255);
A_encry = reshape(A_uint8(1:32*32),32,32);
if  crypt==1
% ִ��ͼ�����
% subplot(1,3,1);
% imshow(image);
 for i = 1:32
     for j = 1:32
         image_encry(i,j) = bitxor(image(i,j),A_encry(i,j));
     end
 end
        M=image_encry;

% subplot(1,3,2);
% imshow(image_encry);
% title('����ͼ��');

%ִ��ͼ�����
else
    image_encry=image;
for i = 1:32
    for j = 1:32
        image_decry(i,j) = bitxor(image_encry(i,j),A_encry(i,j));
    end
end
  M=image_decry;     
% subplot(1,3,3);
% imshow(image_decry);
% title('����ͼ��');
  end
end

