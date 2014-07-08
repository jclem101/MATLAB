% Naive Guassian Elimination, no pivoting.
% Use mxn matrix as input.

function [B] = gauss1(A)

[m,n] = size(A)

for k = 2:n
    for i = k:m
        Lij = A(i,k-1)/A(k-1,k-1); % Factor that multiplies row k
        for j = k-1:n
             A(i,j) = A(i,j) - Lij*A(k-1,j);
        end
    end
end

B = A;