
%1
syms x h;
func(x) = sin(x)-cos(x);
thirdfunc = diff(func,3)
approx(x,h) = ((func(x+h)-func(x-h))/2*h)-((h^2)/6)*thirdfunc(x)
approx(0,.1)
error(x,h) = ((h^2)/6)*thirdfunc(x)
graph = [1 0;2 0; 3 0 ; 4 0; 5 0; 6 0; 7 0; 8 0; 9 0; 10 0; 11 0; 12 0]
for(i=1:1:12)
    h = 10^-i;
    x = 0;
    graph(i,2) = error(x,h)
end
plot(graph)
%2
func(x) = (1+x)^-1
thirdfunc = diff(func,3)
approx(x,h) = ((func(x+h)-func(x-h))/2*h)-((h^2)/6)*thirdfunc(x)
approx(1,.1)
error(x,h) = ((h^2)/6)*thirdfunc(x)
graph = [1 0;2 0; 3 0 ; 4 0; 5 0; 6 0; 7 0; 8 0; 9 0; 10 0; 11 0; 12 0]
for(i=1:1:12)
    h = 10^-i;
    x = 1;
    graph(i,2) = error(x,h)
end
plot(graph)
%3

