
%LORENZ �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

function [component_one,component_two,component_three]=Lorenz(initial_value)%1E-17
    tspan=[20,100];%ʱ��ضϷ�Χ
    [~,Y0]=ode45(@odefun,tspan,initial_value);
    component_one=Y0(:,1)';
    component_two=Y0(:,2)';
    component_three=Y0(:,3)';
%     figure(1);
%     plot3(Y0(:,1),Y0(:,2),Y0(:,3));
%     xlabel('x');
%     ylabel('y');
%     zlabel('z');
%     title('Lorenz����ϵͳ��ռ�ͼ');
%     grid on;
end

