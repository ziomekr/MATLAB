%Function used for calculations of Legendre polynomial of degree n
%Usage: legendre(n), n is desired degree
%Output: coefficients vector
function [N] = legendre(n)
N0=1;
N1=1;
if n<0
    N=-1;
    disp("legendre(n), n must be greater or equal 0.")
    return;
end
if n==0
    N=N0;
    return;
end
if n==1
    N=[N0, N1];
    return;
end

N = zeros(1, n+1);
k = n/2;
index = 1;
%Implemenation of explicit formula for Legendre polynomial
for i=0 : k
    N(index) = 1/2^n * (-1)^i * nchoosek(n, i) * nchoosek(2*n-2*i, n);
    index = index + 2;
end

return;
