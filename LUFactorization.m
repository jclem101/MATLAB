function [L,U,P]=LUFactorization(A, b)
%partially inspired/simplified by
%http://cis.poly.edu/~mleung/CS3734/s03/ch02/LU_factor.htm by K. Ming Leung,
%and code given by Prof. Patrick Jones


n = size(A);
L = eye(n);
U = A;
for i=1:1:n
    if (U(i,i) == 0); end
    next = i + 1;
    L(next:n,i)=U(next:n,i)/U(i,i);
    for j=next:1:n
        U(j,:)=U(j,:)-L(j,i)*U(i,:);
    end
end
%get solution vector P
P = A\b;
