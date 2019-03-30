%Calculating max root using power method
%Input: companionMatrix - companion matrix of a polynomial, steps - number
%of steps to perform
%Output: max_root - largest in absolute value eigenvalue of a matrix
function [max_root] = powerMethod(companionMatrix, steps)
    [~,n] = size(companionMatrix);
    x = rand(n,1);
    for i=1:steps
        y = companionMatrix*x;
        max_root = y(1)/x(1);
        x = y/max(abs(y));
    end
end

