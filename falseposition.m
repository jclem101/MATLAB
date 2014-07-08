% =====================================================================
% ****** To find root of given equation by false position method ******
% ************************ By Mahesha MG ******************************
% Date: 28/11/2012
% =====================================================================

display('Equation is x^2+x-2 = 0')
i=1;
while(i)
    %equan = @(x) (x^3)-2*x-2;
    %equan = @(x)(2.71828^x)+x-7
     equan = @(x)(2.71828^x)+sin(x)-4
    xl=input('Enter lower value:');
    xu=input('Enter upper value: ');
    e=input('Enter accuracy: ');
    if equan(xl)*equan(xu)<0
        i=0;
    else

        warning('Enter proper range');
    end
end
if equan(xl)<0
    xn=xl;
    xp=xu;
else
    xn=xu;
    xp=xl;
end

xm=xl;
while (abs(equan(xm))>e)
   xm=(xn*equan(xp)-xp*equan(xn))/(equan(xp)-equan(xn));
    if equan(xm)<0
        xn=xm;
    else
        xp=xm;
    end
end

Root=xm
