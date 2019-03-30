%TEST FILE, AFTER EACH PLOT PLEASE PRESS ANY BUTTON TO SEE PLOT FROM NEXT TEST
%SYSTEM OF ODE FOR TESTS 1-4

%ODE1: x' = x + 4y - e^t
%ODE2: y' = x + y + 2e^t
%x(0) = 4
%y(0) = 5/4
%exactX: 4e^3t + 2e^-t - 2e^t
%exactY: 2e^3t - e^-t + 1/4e^t

%TEST 1 # of steps:5

n=5;
[t,x,y,errx,erry] = solveODE(@(t,x,y)x+4*y-exp(t), @(t,x,y) x + y + 2*exp(t), 0, 1, n, 4, 1.25, @(t,x,y) 4*exp(3*t) + 2*exp(-t) - 2*exp(t), @(t,x,y)2*exp(3*t) - exp(-t) + 0.25*exp(t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 2 # of steps:20

n=20;
[t,x,y,errx,erry] = solveODE(@(t,x,y)x+4*y-exp(t), @(t,x,y) x + y + 2*exp(t), 0, 1, n, 4, 1.25, @(t,x,y) 4*exp(3*t) + 2*exp(-t) - 2*exp(t), @(t,x,y)2*exp(3*t) - exp(-t) + 0.25*exp(t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 3 # of steps:100

n=100;
[t,x,y,errx,erry] = solveODE(@(t,x,y)x+4*y-exp(t), @(t,x,y) x + y + 2*exp(t), 0, 1, n, 4, 1.25, @(t,x,y) 4*exp(3*t) + 2*exp(-t) - 2*exp(t), @(t,x,y)2*exp(3*t) - exp(-t) + 0.25*exp(t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 4 # of steps:1000

n=1000;
[t,x,y,errx,erry] = solveODE(@(t,x,y)x+4*y-exp(t), @(t,x,y) x + y + 2*exp(t), 0, 1, n, 4, 1.25, @(t,x,y) 4*exp(3*t) + 2*exp(-t) - 2*exp(t), @(t,x,y)2*exp(3*t) - exp(-t) + 0.25*exp(t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%SYSTEM OF ODE FOR TEST 5-6

%ODE1: x' = x - y
%ODE2: y' = x + 3y
%exactX: e^2t
%exactY: -e^2t

%TEST 5, n=10

n=10;
a=0;
b=1;
initx = exp(2*a);
inity = -exp(2*a);

[t,x,y,errx,erry] = solveODE(@(t,x,y) x - y, @(t,x,y) x + 3*y, a, b, n, initx, inity, @(t,x,y)exp(2*t), @(t,x,y)-exp(2*t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 6, n=1000

n=1000;
a=0;
b=1;
initx = exp(2*a);
inity = -exp(2*a);

[t,x,y,errx,erry] = solveODE(@(t,x,y) x - y, @(t,x,y) x + 3*y, a, b, n, initx, inity, @(t,x,y)exp(2*t), @(t,x,y)-exp(2*t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%STIFF SYSTEM OF ORDINARY DIFFERENTIAL EQUATIONS TESTS 8-10
%ODE1: x' = -80.6x + 119.4y
%ODE2: y' = 79.6x - 120.4y
%exactX: c1*3*e^-t + (-c2) * e^-200t
%exactY: c1*2*e^-t + c2 * e^-200t
%c1 and c2 depend on initial conditions, if c2==0, then solution should be
%smooth, otherwise it should produce rapid changes while approaching to
%solution

%TEST 7: c1=5, c2=0, hence x(0) = 15 y(0)= 10
c1 = 5;
c2 = 0;
a = 0;
b = 1;
initx = c1*3*exp(-a) + (-c2) * exp(-200*a);
inity = c1*2*exp(-a) + c2 * exp(-200*a);
[t,x,y,errx,erry] = solveODE(@(t,x,y)-80.6*x + 119.4*y, @(t,x,y)79.6*x - 120.4*y, a, b, 200, initx, inity, @(t,x,y)c1*3*exp(-t) + (-c2) * exp(-200*t), @(t,x,y)c1*2*exp(-t) + c2 * exp(-200*t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 8: c1=5, c2=1, hence x(0) = 14 y(0)= 12
c1 = 5;
c2 = 1;
a = 0;
b = 1;
initx = c1*3*exp(-a) + (-c2) * exp(-200*a);
inity = c1*2*exp(-a) + c2 * exp(-200*a);
[t,x,y,errx,erry] = solveODE(@(t,x,y)-80.6*x + 119.4*y, @(t,x,y)79.6*x - 120.4*y, a, b, 200, initx, inity, @(t,x,y)c1*3*exp(-t) + (-c2) * exp(-200*t), @(t,x,y)c1*2*exp(-t) + c2 * exp(-200*t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 9: c1=1, c2=0, hence x(0) = 3 y(0)= 2
c1 = 1;
c2 = 0;
a = 0;
b = 1;
initx = c1*3*exp(-a) + (-c2) * exp(-200*a);
inity = c1*2*exp(-a) + c2 * exp(-200*a);
[t,x,y,errx,erry] = solveODE(@(t,x,y)-80.6*x + 119.4*y, @(t,x,y)79.6*x - 120.4*y, a, b, 200, initx, inity, @(t,x,y)c1*3*exp(-t) + (-c2) * exp(-200*t), @(t,x,y)c1*2*exp(-t) + c2 * exp(-200*t));

ax1 = subplot(2,1,1);
p = plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')

waitforbuttonpress

%TEST 10: c1=1, c2=5, hence x(0) = -2 y(0)= 7
c1 = 1;
c2 = 5;
a = 0;
b = 1;
initx = c1*3*exp(-a) + (-c2) * exp(-200*a);
inity = c1*2*exp(-a) + c2 * exp(-200*a);
[t,x,y,errx,erry] = solveODE(@(t,x,y)-80.6*x + 119.4*y, @(t,x,y)79.6*x - 120.4*y, a, b, 200, initx, inity, @(t,x,y)c1*3*exp(-t) + (-c2) * exp(-200*t), @(t,x,y)c1*2*exp(-t) + c2 * exp(-200*t));

ax1 = subplot(2,1,1);
plot(ax1,t,x, t,y);
title(ax1,'Calculated values')
ylabel(ax1,'f(t)')
xlabel(ax1,'t')
legend('x_1(t)','x_2(t)')
ax1 = subplot(2,1,2);
plot(ax1,t,errx,t,erry);
title(ax1,'Errors')
ylabel(ax1,'exact(t) - f(t)')
xlabel(ax1,'t')
legend('error x_1(t)','error x_2(t)')