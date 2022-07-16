function tema8

clc;

t_init=0; 
%t_max=40;
t_max=120;

y=simplify(dsolve('D2y+0.5*Dy+9*y=0', 'y(0)=1', 'Dy(0)=0'))
u=simplify(dsolve('D2y+9*y=0.5*sin(3*t)', 'y(0)=1', 'Dy(0)=0'))
v=simplify(dsolve('D2y+9.61*y=0.5*sin(3*t)', 'y(0)=1', 'Dy(0)=0'))

t = linspace(t_init,t_max,1000);
Y=eval(y);
U=eval(u);
V=eval(v);

subplot(3,1,1)
plot(t,Y,'r','LineWidth',1)
grid on
xlabel('t')
ylabel('y(t)')
title('Graph: y(t)')


subplot(3,1,2)
plot(t,U,'g','LineWidth',1)
grid on
xlabel('t')
ylabel('u(t)')
title('Graph: u(t)')

subplot(3,1,3)
plot(t,V,'b','LineWidth',1)
grid on
xlabel('t')
ylabel('v(t)')
title('Graph: v(t)')

%  %% Animation:
% 
%  for k = 1 : length(t)
%      
%     subplot(3,1,1)
%     plot(t(1:k),Y(1:k),'r','LineWidth',1)
%     axis([t_init,t_max,-2,2])
%     grid on
%     xlabel('t')
%     ylabel('y(t)')
%     title('Graph: y(t)')
% 
% 
%     subplot(3,1,2)
%     plot(t(1:k),U(1:k),'g','LineWidth',1)
%     axis([t_init,t_max,-8,8])
%     grid on
%     xlabel('t')
%     ylabel('u(t)')
%     title('Graph: u(t)')
% 
%     subplot(3,1,3)
%     plot(t(1:k),V(1:k),'b','LineWidth',1)
%     axis([t_init,t_max,-5,5])
%     grid on
%     xlabel('t')
%     ylabel('v(t)')
%     title('Graph: v(t)')
% 
%     M(k)=getframe;
%  
%  end
end
