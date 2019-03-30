%Function calculates smallest (in modulus) eigenvalue (which in this problem is also smallest root of polynomial) of a matrix
%Input: companionMatrix - companion matrix of a polynomial, steps - number
%of steps to perform
%Output: min_root - smallest in absolute value eigenvalue of a matrix
function [min_root] = inversePowerMethod(companionMatrix, steps)
    [~,n] = size(companionMatrix);
    x = rand(n,1);
    [L,U,P,Q] = GECP(companionMatrix);
    PQ = P*Q;
    for i=1:steps
        y = solveSubstitute(L,U,PQ,x);
        min_root = y(1)/x(1);
        x=y/max(abs(y));
    end
    min_root = 1/min_root;
end

