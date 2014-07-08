function result = montecarlo(F, n)
%monte carlo type 1
points = zeros(n,2);
for i = 1:1:n
    points(i,1) = rand;
    points(i,2) = rand;
end
count = 0;
plot(points);
for i= 1:1:n
    %if x*y is between the limits of y and the limits of x
    %if(( points(i,1)*points(i,2) > sqrt(points(i,1)) && points(i,1)*points(i,2)< points(i,1)^2) && (points(i,1)*points(i,2)>0 && points(i,1)*points(i,2)<1))
    %if((points(i,2) > sqrt(points(i,1)) && points(i,2)< points(i,1)^2) && (points(i,1)>0 && points(i,1)<1))
%     points(i,1)
%     points(i,2)
%     
%     F(points(i,1),points(i,2))


    if(((F(points(i,1),points(i,2))>points(i,1)^2)&&(F(points(i,1),points(i,2))<sqrt(points(i,1))))&&(F(points(i,1),points(i,2))>0)&&(F(points(i,1),points(i,2))<1))
   %if(((points(i,1)>points(i,1)^2)&&(points(i,1)<sqrt(points(i,1))))&&(points(i,2)>0)&&points(i,2)<1)     
    count = count + 1;
    end
 end
result  = count/n;

