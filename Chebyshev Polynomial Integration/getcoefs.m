%Function calculating coefficients of Chebyshev polynomial of degree n
%using explicit formulation, used in tests
%Usage: getcoefs(n), n - degree of polynomial
%Output: coefficients vector

function [p] = getcoefs(n)
if n<0
    p = NA;
    return
end

if n == 0
    p = 1;
    return
end

if n == 1
    p = [1,0];
    return
end

p = zeros(1, n+1);
k = n/2;
index = 1;
for i=0 : k
    p(index) = k*(-1)^i*(factorial(n-i-1)/(factorial(i)*factorial(n-2*i)))*2^(n-2*i);
    index = index + 2;
end
return