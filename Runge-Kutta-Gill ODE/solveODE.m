%Function takes as arguments:
% ODE1 - first ordinary differential equation in the system as anonymous function
% ODE2 - second ordinary differential equation in the system as anonymous function
% a - start of the calculations interval
% b - end of the calculations interval
% n - number of steps
% initODE1 - initial value for ODE1
% initODE2 - initial value for ODE2
% exactODE1 - exact solution function of first ordinary differential as anonymous function
% exactODE2 - exact solution function of second ordinary differential equation in the system as anonymous function

%Function returns:
%t - vector of used variables
%x - calculated values of x(t) - from ODE1
%y - calculated values of y(t) - from ODE2
%errODE1 - error of calculated values of x(t)
%errODE2 - error of calculated values of y(t)

function [t, x, y, errODE1, errODE2]=solveODE(ODE1, ODE2, a, b, n, initODE1, initODE2, exactODE1, exactODE2)
h = (b-a)/n;                %h - step size
t = a:h:b;                  %initialization of needed vectors
x = zeros(1,n+1);                   
y = zeros(1,n+1);
errODE1 = zeros(1,n+1);
errODE2 = zeros(1,n+1);
x(1) = initODE1;            %assigning initial values in the vector
y(1) = initODE2;
sqroot2 = sqrt(2);          %calculation of square root of 2 so it is not calculated every time when needed
for i=1:n                   %loop of calculations, described in report
    F1 = h*ODE1(t(i), x(i), y(i));
    G1 = h*ODE2(t(i), x(i), y(i));
    F2 = h*ODE1(t(i)+0.5*h, x(i)+0.5*F1, y(i)+0.5*G1);
    G2 = h*ODE2(t(i)+0.5*h, x(i)+0.5*F1, y(i)+0.5*G1);
    F3 = h*ODE1(t(i)+0.5*h, x(i)+0.5*(sqroot2-1)*F1 + 0.5*(2-sqroot2)*F2, y(i) + 0.5*(sqroot2-1)*G1 + 0.5*(2-sqroot2)*G2);
    G3 = h*ODE2(t(i)+0.5*h, x(i)+0.5*(sqroot2-1)*F1 + 0.5*(2-sqroot2)*F2, y(i) + 0.5*(sqroot2-1)*G1 + 0.5*(2-sqroot2)*G2);
    F4 = h*ODE1(t(i)+h, x(i)-0.5*sqroot2*F2+0.5*(2+sqroot2)*F3, y(i)-0.5*sqroot2*G2+0.5*(2+sqroot2)*G3);
    G4 = h*ODE2(t(i)+h, x(i)-0.5*sqroot2*F2+0.5*(2+sqroot2)*F3, y(i)-0.5*sqroot2*G2+0.5*(2+sqroot2)*G3);
    
    x(i+1) = x(i) + (1/6)*(F1 + (2-sqroot2)*F2 + (2+sqroot2)*F3 + F4);
    y(i+1) = y(i) + (1/6)*(G1 + (2-sqroot2)*G2 + (2+sqroot2)*G3 + G4);
    errODE1(i+1) = exactODE1(t(i+1), x(i+1), y(i+1)) - x(i+1);
    errODE2(i+1) = exactODE2(t(i+1), x(i+1), y(i+1)) - y(i+1);
end
end
