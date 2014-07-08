function n = newtonsmethod2(x, tol, nmax)

xvals=x;                                       %initialize array of iterates
n=0;                                           %initialize n (counts iterations)

while tol>=1e-5&&n<=nmax                        %set while-conditions
    y=x-(sin(x)+x*cos(x))/(2*cos(x)-x*sin(x)); %compute next iterate
    xvals=[xvals;y];                           %write next iterate in array
    tol=abs(y-x);                              %compute error
    x=y;n=n+1;                                 %update x and n
end                                            %end of while-loop 