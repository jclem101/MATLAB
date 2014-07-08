                    % ============= %
                    % SECANT METHOD %
                    % ============= %

% Find the roots of using Secant Method
% func --> function is taken by user
% like sin(x) or x^2 + x - 1 or any other but use the same format
% i.e. use paranthesis as used above with 'x' for sin, cos,... etc
% and spacing between '+' or '-' operation
% a --> Xn-1
% b --> Xn
% c --> Xn+1
% maxerr --> Maximum Error in Root


syms x;
func = input('Enter Function in terms of x: ');
a = input('Ener Lower Limit: ');
b = input('Ener Upper Limit: ');
maxerr = input('Enter Maximum Error: ');

f = inline(func);

c = (a*f(b) - b*f(a))/(f(b) - f(a));

disp('   Xn-1      f(Xn-1)      Xn      f(Xn)      Xn+1      f(Xn+1)');
disp([a f(a) b f(b) c f(c)]);

while abs(f(c)) > maxerr
    b = a;
    a = c;
    c = (a*f(b) - b*f(a))/(f(b) - f(a));
    disp([a f(a) b f(b) c f(c)]);
end
display(['Root is x =' num2str(c)]);

% ===================================== %
% PROGRAMMED BY SHEIKH MUKHTAR HUSSAIN  %
%       Feel Free to contact            %
%    mh_shiningstar@hotmail.com         %
% ===================================== %