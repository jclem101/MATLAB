function numintervals = simpsonsrule(func,a,b,numintervals)

%approximates area under curve for numintervals, between a and b for the
%function func
 
    
    inc = (b - a) / numintervals; %gets increment
    sum   = func(a) + func(b);%sum of first two evaluations
    
 
    for i = 1:2:numintervals%get scalar 4 evaluations
        sum  = sum + 4 * func(a + i * inc);
    end
    for i = 2:2:numintervals-1 %get scalar 2 evaluations
        sum  = sum + 2*func(a + i * inc);
    end
    approx = (sum/3) * inc;
    display (approx)
end