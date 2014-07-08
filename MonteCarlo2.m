%F is the vectorized function to be evaluated
%bound is a vector representing the x,y,z bounds to the integrals
%N is the number of samples to use in the approximation
%e.g. MonteCarlo(inline('x.*y.*z'), [0 1 0 1 0 1], 1000)
function est = MonteCarlo2(F, bound, N)
     B = bound;
     R = rand(2, N);
     %Set the random samplings to the correct intervals
     R(1, :) = (B(2)-B(1))*R(1, :)+ B(1);
     R(2, :) = R(2, :)*(B(4) - B(3)) + B(3);
     Volume = (B(2)-B(1))*(B(4)-B(3));
     s = feval(F, R(1,:), R(2,:));
     total = sum(s);
     avgF = total/N;
     Approx = avgF*Volume;
     est = Approx;