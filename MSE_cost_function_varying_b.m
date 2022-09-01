%%visulazing cost function when w is consstant
w = 8;
syms b;
%total data points m
m = 4;

figure1 = figure;

subplot(1, 3, 1)
hold on

%plotting cost function at (2, 4)
fplot((w*2+b-4)^2, [-100,100], DisplayName="j at (2,4)", LineWidth=2.0)

%plotting cost function at (2, 1)
fplot((w*2+b-1)^2, [-100,100], DisplayName="j at (2,1)",LineWidth=2.0)

%plotting cost function at (7,1)
fplot((w*7+b-1)^2, [-100,100], DisplayName="j at (7,1)",LineWidth=2.0)

%plotting cost function at (9, 3)
fplot((w*9+b-3)^2, [-100,100], DisplayName="j at (9,3)", LineWidth=2.0)


title("cost function at different data oints")
xlabel("size in 10000 sq-ft")
ylabel("price in $10000's")
legend

hold off

%%visualizing the overall cost function

subplot(1, 3, 2)
fplot(((w*2+b-1)^2+(w*9+b-3)^2+(w*2+b-4)^2+(w*7+b-1)^2)/(2*m), [-100,100], LineWidth=2.0)
title("overall cost function")
xlabel("size in 10000 sq-ft")
ylabel("price in $10000's")