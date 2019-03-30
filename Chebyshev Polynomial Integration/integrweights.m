%Function calculating integration weights
%Usage integrweights(x, legendre), x - roots vector, legendre -
%coefficients vector
%Output: weights vector
function [w] = integrweights(x, legendre)

len = length(x);
dl = polyder(legendre); %first derivative of given polynomial 
w = zeros(1, len);

for i=1:len
    w(i) = 2/((1-x(i)^2)*polyval(dl,x(i))^2);
end
return