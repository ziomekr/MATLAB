%Creating companion matrix out of polynomial coefficients
%Input: coefs - polynomial coefficients
%Output: compMatrix - generated companion matrix
function [compMatrix] = createCompanionMatrix(coefs)
    [~,n]=size(coefs);
    diagonal=ones(1,n-1);
    compMatrix = diag(diagonal,-1);
    compMatrix(1,:)=-coefs;
end

