%Function used for testing, it generates polynomial coefficients for given
%roots
%Input: rootsVector - vector of roots
%Output: coefs - coefficients vector 
function [coefs] = generatePolyWithGivenRoots(rootsVector)
x= sym('x');
poly = expand(prod(x-rootsVector));
coefs=coeffs(poly);
coefs=fliplr(coefs);
coefs=coefs(1,2:end);
end

