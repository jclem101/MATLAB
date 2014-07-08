function n = newtonsmethod(xinit, tol, maxiter)
%function prompts for data then finds real root

%xinit = inputdlg('enter initial guess');
%tol = inputdlg('enter tolerance');
%maxiter = inputdlg('enter max iterations');

xlast = xinit;
for i=1:1:maxiter
    %repeats until maxiter is reached
    if(abs(xinit - xlast) > tol) 
        break 
    end
    
    %xinit = xinit - ((xinit^3 - 4*xinit^2 - 2)/(3*xinit^2 - 8*xinit));
    %xinit = xinit - ((xinit^5-xinit+1)/(5*xinit^4-1));
    %xinit = xinit - ((xinit^3-4*xinit -8)/(3*xinit^2-4));
    %xinit = xinit - ((xinit^4-10*xinit+5)/(4*xinit^3-10));
    %xinit = xinit - ((2*xinit^4-2*xinit^3+xinit^2+3*xinit-4)/(8*xinit^3-6*xinit^2+2*xinit+3));
    %xinit = xinit - ((cos(xinit)- xinit)/(-sin(xinit)-1));
    xinit = xinit - ((sin(xinit)-xinit^2)/(cos(xinit)-2*xinit));
    xlast = xinit;
end    


display(xinit)
