%%plot of cost function when both w and b is varying
syms w b;
j = ((w*2+b-1)^2+(w*9+b-9/2)^2+(w*4+b-2)^2+(w*7+b-7/2)^2)/(2*4);%only 4 points
% % generating data points
% x = 1:50;
% y = 1/2*x;
% % adding random data points
% x_rand = (rand(1,5)*5);
% y_rand = (rand(1,5)*5);
% x = [x x_rand];
% y = [y y_rand];
% j = ((w*x+b-y).^2)/(2*length(x));----takes a long time
fsurf(j, LineWidth=2.0)
xlabel("w")
ylabel("b")
zlabel("j(w,b)")
%% need to explore
% fcontour(j, LevelList=[-12,34,1])