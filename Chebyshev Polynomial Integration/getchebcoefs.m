%Function calculating coefficients of p(x)=a0T0(x)+a1T1(x)+...+anTn(x),
%used in tests
%Usage: getchebcoefs(a), a-vector of coefficients
%Output: vector of coefficients of p(x)
function [p] = getchebcoefs(a)

n = length(a)-1;
p = getcoefs(n);
p = p .* a(n+1);

for i=1 : n
    z = zeros(1,i);
    c = getcoefs(n-i);
    c = c .* a(n-i+1);
    p = p + [z,c];
end

return
