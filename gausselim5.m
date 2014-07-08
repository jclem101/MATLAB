function [x] = gausselim5(A,b,eps)
%finds upper triangular matrix for A and then solves using built-in util
%such that Ax=b

%get max dimension for A
 n = max(size(A));

  for i=2:n,
       for j=i:n,
          mult = A(j,i-1)/A(i-1,i-1);
          A(j,:) = A(j,:) - A(i-1,:)*mult;
          b(j) = b(j) - mult*b(i-1);
       end
  end
%display A
A
%solve(built-in includes step of back substitution)
x = A\b;
