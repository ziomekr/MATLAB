function [x] = solveLDLT(A, B)
%Program solves linear system of equations in form AX = B using block LDL^T
%method
%Input:
%A - positive definite symmetrical square matrix of dimensions (n x n),
%where n = 2p
%B - (n x 1) matrix containing corresponding AX values 
%Output:
%X - (n x 1) matrix containing x1, x2,..., xn solutions
[n, m] = size(A);
[r, s] = size(B);
x = [];
%Checking if the input is correct
if(m~=n)
    disp("Wrong input. Matrix A is not square.");
    return;
end
if(n~=r || s~=1)
    disp("Wrong input. Matrix B has incorrect dimensions.");
    return;
end
if(mod(n,2)~=0)
    disp("Wrong input. Matrix A dimensions not in form (2px2p).");
    return;
end

if(~(all(eig(A) > eps)&&(isequal(A, A.'))))
    disp("Wrong input. Matrix A is not a symmetric, positive definite.");
    return;
end

p = n/2;
%First diagonal block.
D1 = A(1:p, 1:p);
%Only part of L matrix needed to calculate X, rest of the blocks are
%identity matrices of dimension (p x p).
L1 = A(p+1:n, 1:p)*D1^-1;
%Second diagonal block.
D2 = A(p+1:n, p+1:n) - L1*D1*L1.';
%Creating diagonal D matrix.
D = [D1 zeros(p); zeros(p) D2];
%Using the fact that A = LDL^T & AX = B, we have LDL^TX = B, substituting Y
%as DL^TX, we have LY = B, part below calculates Y.
Y = [B(1:p); zeros(p,1)];

Y1 = L1*B(1:p);

for k=1:p
    Y(p+k) = B(p+k) - Y1(k);
end
%Now using the fact that DL^TX = Y and multiplying both sides by D^-1, we
%have D^-1*DL^TX = D^-1*Y, which is IL^TX = D^-1*Y -> L^TX = D^-1Y. Which
%can be solved for X, which is a solution to given system of equations.
Y = D^-1 * Y;
X = [zeros(p,1); Y(p+1:n)];
Y1 = L1.'*X(p+1:n);

for k=1:p
    X(k) = Y(k) - Y1(k);
end

x = X;

return;
