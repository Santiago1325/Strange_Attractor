clear all

ti = 0;
tf = 1000;

x0 = [2.01 3.1 8.2];

a = 2;
b = 8;
c = 1;

[t,x] = ode45(@(t,x) Lorenz(t,x,a,b,c), [ti tf], x0);

MakeVideo(x,"rossler")

% v = VideoWriter('rossler.avi');
% v.FrameRate=20;
% 
% open(v);
% d = size(x);
% 
% for k = 1:d(1)
%     plot3(x(1:k,1),x(1:k,2),x(1:k,3));
%     grid on
%     xlim([min(x(:,1)),max(x(:,1))]);
%     ylim([min(x(:,2)),max(x(:,2))]);
%     zlim([min(x(:,3)),max(x(:,3))]);
%     F = getframe(gcf);
%     writeVideo(v,F);
% end
% 
% close(v);

% plot3(x(:,1),x(:,2),x(:,3));
