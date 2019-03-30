%Function used to calculate Chebyshev polynomial value for given n
function [y] = chebval(x, n)
if n == 0
    y = ones(size(x));
    return;
elseif n==1
    y = x;
    return;
end
t0 = ones(size(x));
t1 = x;
tx = 2*x;
for i = 2:n
    t2 = tx.*t1-t0;
    t0 = t1;
    t1 = t2;
end
y = t2;
end