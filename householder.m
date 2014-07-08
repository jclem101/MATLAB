function [Q, R] = householder(A)
%http://www.math.purdue.edu/~xiaj/teaching/692.11f/houseqr.m
[m,n] = size(A);

Q = eye(m);
for i = 1:n
    x = A(i:m,i);
    x(1) = x(1)+sign(x(1))*norm(x);
    u = x/norm(x);
    A(i:m,i:n) = A(i:m,i:n)-2*u*(u'*A(i:m,i:n));
    Q(i:m,:) = Q(i:m,:)-2*u*(u'*Q(i:m,:)); % This givens Q'
end

Q = Q'; % Important
R = triu(A);