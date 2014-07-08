function [a,b] = sparsesetup(n)
e = ones(n,1);
n2= n/2;
a = spdiags([e 2*e e], -1:1, n, n)
b = zeros(n,1)
