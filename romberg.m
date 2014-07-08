function [R,error] = romberg(f,a,b,n)
    h = (b-a)./(2.^(0:n-1));
    R(1,1) = (b-a)*(f(a)+f(b))/2;
    for j = 2:n
        subtotal = 0;
        for i = 1:2^(j-2)
            subtotal = subtotal + f(a+(2*i-1)*h(j));
        end
        R(j,1) = R(j-1, 1)/2+h(j)*subtotal;
        for k=2:j
            R(j,k) = (4^(k-1)*R(j,k-1)-R(j-1,k-1))/(4^(k-1)-1);
            
            if(R(j,k)-R(j-1, k-1)<(0.5)*10^-8)
                break;
            end
        end
    end
syms x
F = integral(f,a,b)
error = F-R(j,k)
end