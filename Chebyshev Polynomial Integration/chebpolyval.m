%Function calculating value of p(x)=a0T0(x)+a1T1(x)+...+anTn(x) using recursive
%relation of Chebyshev polynomials
%Usage: chebpolyval(a, x), a - coefficients vector, x - variable
%Output: value of p(x)
function [t] = chebpolyval(a, x)
n = length(a)-1;

if n == 0
    t = a;
    return
end

if n == 1
    t = a(2)*x + 1;
    return
end

t0 = 1;
t1 = x;
tx = 2*x;
t = t0*a(1)+t1*a(2);

for i=2:n
    t2 = tx*t1 - t0;
    t0 = t1;
    t1 = t2;
    t = t + a(i+1)*t2;
end

return