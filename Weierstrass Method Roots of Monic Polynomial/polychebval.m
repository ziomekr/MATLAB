%Function used to calculate value of a polynomial
function [y] = polychebval(p, x)
if(size(p,1)~=1)
    disp("Err: polychebval(p, x), p has to be a vector")
    return;
end    
y=zeros(size(x));
n = length(p);
for i = 1:n
    y = y + p(i) * chebval(x,n-i);
end
