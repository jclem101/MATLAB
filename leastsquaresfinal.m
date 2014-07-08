function c = leastsquaresfinal(x,y,c)
%uses newton gauss method for nonlinear systems
%  14.9999
%   54.3487
% -576.4116
mylength = length(x)
DR = zeros(mylength,3)
R = zeros(mylength,1)
for i = 1 : 1: mylength*10
   for j = 1: 1 :mylength
   R (j,1) = [c(1,1)* sin(c(2,1)*x(j,1)+c(3,1))-y(j,1)];  
   DR(j,1) = [sin((c(2,1)*x(j,1))+c(3,1))];
   DR(j,2) = [c(1,1)*cos(c(2,1)*x(j,1)+c(3,1))*x(j,1)];
   DR(j,3) = [c(1,1)*cos(c(2,1)*x(j,1)+c(3,1))];
   end
   

ATA = DR'*DR
negATr = -DR'*R
v = ATA\negATr
c= c+v
end