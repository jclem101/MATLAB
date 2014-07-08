function solution = leastsquares(A,b)

At = A'
AtA = At * A
Atb = At * b
xbar = AtA \ Atb
res = b - A*xbar
m = length(res)
SE = sum(res.^2)
RMSE = sqrt(SE/m)