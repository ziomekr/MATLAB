%Function for testing, calulating integral using all coefficients and
%built-in MatLAB functions
%Usage: checkchebintegr(a), a - vector of coefficients
%Output: value of p(x) integral
function [y] = checkchebintegr(a)

t = getchebcoefs(a);
y = diff(polyval(polyint(t), [-1 1]));

return