function [x, steps]  = polyweier(p, x, eps, N)
%[x, steps]  = polyweier(p, x, eps, N)
%function returns calculated roots and number of performed iterations
%using Weierstrass method
if(size(p,1)~=1)
    disp("Err: polyweier(p, x), p has to be a vector")
    return;
elseif(size(x,1)~=1)
    disp("Err: polyweier(p, x), x has to be a vector")
    return;
elseif(length(p)-length(x)~=1)
        temp = zeros(1,length(p)-1);
        for i=1:length(p)-1
            temp(i)=x-i/10;
        end
        x = temp;
     
end

k = length(x);
t = 2^(k-1);
p=p/t;
y = polychebval(p ,x); %calculating values of polynomial for given guesses
for n = 1:N
    wx = ones(size(x));
    for i = 1:k 
        for j = 1:k
            if(j ~=i )
                wx(i) = wx(i)*(x(i)-x(j)); %calculating Weierstrass coef
            end
        end
        wx(i) = y(i)/wx(i); %calculating Weierstrass coef
    end
    x = x - wx; 
    y = polychebval(p, x); %value for next iteration
    res = norm(y, inf);
    if (abs(wx) < eps) | (res<eps) %checking if result is satisfactory
        steps = n;
        return;
    end
    steps = n;
end