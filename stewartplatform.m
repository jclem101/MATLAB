%function for calculating stewart platform
function out = stewartplatform(theta)

L1 = 2;
L2 = 2^(0.5);
L3 = 2^(0.5);
gamma = pi/2;
p1 = 5^(0.5);
p2 = 5^(0.5);
p3 = 5^(0.5);
x1 = 4;
x2 = 0;
y2 = 4;

A2 = L3*cos(theta) - x1;
B2 = L3*sin(theta);
A3 = L2*cos(theta + gamma) - x2;
B3 = L2*sin(theta + gamma) - y2;

D = 2.*(A2.*B3 - B2.*A3);
N1 = B3.*(p2.^2 - p1.^2 - A2.^2 - B2.^2) - B2.*(p3.^2 - p1.^2 - A3.^2 - B3.^2);
N2 = -A3.*(p2.^2 - p1.^2 - A2.^2 - B2.^2) + A2.*(p3.^2 - p1.^2 - A3.^2 - B3.^2);

x = (B3.*(p2.^2 - p1.^2 -A2.^2 - B2.^2) - B2.*(p3.^2 - p1.^2 - A3.^2 - B3.^2))./(2.*(A2.*B3 - B2.*A3));
y = (-A3.*(p2.^2 - p1.^2 - A2.^2 - B2.^2) + A2.*(p3.^2 - p1.^2 - A3.^2 - B3.^2))./(2.*(A2.*B3 - B2.*A3));

out = N1.^2 + N2.^2 - (p1.^2).*D.^2;
