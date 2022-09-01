%%visulazing cost function when b is consstant (for simplicity bhere we take b=0)

syms w
%total data points m
m = 4;

figure1 = figure;

subplot(1, 2, 1)
hold on

%plotting cost function at (2, 4)
fplot((2*w-4)^2, DisplayName="j at (2,4)", LineWidth=2.0)

%plotting cost function at (2, 1)
fplot((2*w-1)^2, DisplayName="j at (2,1)",LineWidth=2.0)

%plotting cost function at (7,1)
fplot((7*w-1)^2, DisplayName="j at (7,1)",LineWidth=2.0)

%plotting cost function at (9, 3)
fplot((9*w-3)^2, DisplayName="j at (9,3)", LineWidth=2.0)


title("cost function at different data oints")
xlabel("size in 10000 sq-ft")
ylabel("price in $10000's")
legend

hold off

%%visualizing the overall cost function

subplot(1, 2, 2)
fplot(((7*w-1)^2+(9*w-3)^2+(2*w-4)^2+(2*w-1)^2)/(2*m), LineWidth=2.0)
title("overall cost function")
xlabel("size in 10000 sq-ft")
ylabel("price in $10000's")