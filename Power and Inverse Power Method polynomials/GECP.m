%Gaussian elimination with complete pivoting, function returns all matrices
%needed to perform substitution
%Input: A - matrix on which GECP is performed
%Output : L, U, P, Q - matrices, L and U are lower and upper triangular
%rexpectively, P and Q are transformation matrices
function [L, U, P, Q] = GECP(A)
[n, ~] = size(A);
p = 1:n; 
q = 1:n;
for k = 1:n-1
    [max_val, rows] = max( abs(A(k:n, k:n)));
    [~, columns] = max(max_val);
    row = rows(columns)+k-1; 
    column = columns+k-1;
    A( [k, row], : ) = A( [row, k], : );
    A( :, [k, column] ) = A( :, [column, k] );
    p( [k, row] ) = p( [row, k] ); q( [k, column] ) = q( [column, k] );
    if A(k,k) == 0
      break
    end
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    i = k+1:n;
    A(i,i) = A(i,i) - A(i,k) * A(k,i);
end
L = tril(A,-1) + eye(n);
U = triu(A);
P = eye(n);
P = P(p,:);
Q = eye(n);
Q = Q(:,q);

