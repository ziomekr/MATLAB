%Solving system of equation Ly = PQB -> Ux = y by substitution
%Input: matrices L, U, PQ, vector b; L, U and PQ are from GECP
%Output: x - calculated result vector
function [x] = solveSubstitute(L, U, PQ, b)    
    PQb = PQ*b;
    [~,n] = size(L);
    x = zeros(n,1);   
    for i=1:n
       x(i) = PQb(i) / L(i,i);
       for j=i+1:n
           PQb(j) = PQb(j) - x(i) * L(j,i);
       end
    end
    for i=n:-1:1   
        x(i) = x(i) / U(i,i);
        for j=(i-1):-1:1         
            x(j) = x(j) - x(i)*U(j,i);            
        end
    end
    
end

