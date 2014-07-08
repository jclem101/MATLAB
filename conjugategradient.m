function solution = conjugategradient(x,A,b,n)
%x initial guess
%A is matrix arg
%b is column vector

d = b-(A*x);
r = d;
previousx = x;
previousr = r;
alpha = 0;
nextx = 0;
nextr = 0;
nextd = 0;
for k = 0:1:n-1
    if r==0 return; end
    alpha = ((r')*r)/(d')*A*d;
    nextx = previousx + alpha*d;
    nextr = previousr - alpha * A * d;
    B = ((nextr')*nextr)/previousr'*previousr;
    nextd = nextr +B*d;
end
solution = nextd