%Desired function calculating integral by Gauss_Legendre method
%Usage: integratechebyshev(a, n), a-coefficients vector, n-desired number
%of integration points
%Output: value of the integral

function [y] = integratechebyshev(a, n)

lcoef = legendre(n);
x = getlegendreroots(lcoef);
w = integrweights(x, lcoef);
y = 0;

for k=1:n
    y = y + w(k)*chebpolyval(a, x(k));
end
return