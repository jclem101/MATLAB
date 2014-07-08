1a. 
F =

    1.0986


error =

   1.6347e-08


ans =

    1.0667         0         0         0         0
    1.0880    1.0952         0         0         0
    1.0959    1.0986    1.0988         0         0
    1.0979    1.0986    1.0986    1.0986         0
    1.0984    1.0986    1.0986    1.0986    1.0986
1b.
f= @(x) (x.^3)./((x.^2)+1)

f = 

    @(x)(x.^3)./((x.^2)+1)

romberg(f,0,1,5)

F =

    0.1534


error =

   1.2327e-08


ans =

    0.2500         0         0         0         0
    0.1750    0.1500         0         0         0
    0.1587    0.1532    0.1535         0         0
    0.1547    0.1534    0.1534    0.1534         0
    0.1538    0.1534    0.1534    0.1534    0.1534
    
1c.

f= @(x) x.*exp(1).^x

f = 

    @(x)x.*exp(1).^x

romberg(f,0,1,5)

F =

     1


error =

  -3.4772e-13


ans =

    1.3591         0         0         0         0
    1.0918    1.0026         0         0         0
    1.0231    1.0002    1.0000         0         0
    1.0058    1.0000    1.0000    1.0000         0
    1.0014    1.0000    1.0000    1.0000    1.0000
    
1e.


f = 

    @(x)x.^2.*sin(x)

romberg(f,0,pi,5)

F =

    5.8696


error =

  -4.5584e-07


ans =

    0.0000         0         0         0         0
    3.8758    5.1677         0         0         0
    5.3636    5.8596    5.9057         0         0
    5.7428    5.8692    5.8699    5.8693         0
    5.8379    5.8696    5.8696    5.8696    5.8696

1f. 

f = 

    @(x)x.^3./(sqrt(x.^4-1))

romberg(f,2,3,5)

F =

    2.5356


error =

  -1.2079e-10


ans =

    2.5421         0         0         0         0
    2.5374    2.5358         0         0         0
    2.5361    2.5357    2.5356         0         0
    2.5358    2.5356    2.5356    2.5356         0
    2.5357    2.5356    2.5356    2.5356    2.5356
    
1g.

f = 

    @(x)1./(sqrt(x.^2+4))

romberg(f,0, 2*sqrt(3),5)

F =

    1.3170


error =

   2.4606e-07


ans =

    1.2990         0         0         0         0
    1.3042    1.3059         0         0         0
    1.3136    1.3167    1.3174         0         0
    1.3161    1.3170    1.3170    1.3170         0
    1.3167    1.3170    1.3170    1.3170    1.3170
    
1h.

f = 

    @(x)x./(sqrt(x.^4+1))

romberg(f,0,1,5)

F =

    0.4407


error =

  -6.9768e-08


ans =

    0.3536         0         0         0         0
    0.4193    0.4412         0         0         0
    0.4355    0.4408    0.4408         0         0
    0.4394    0.4407    0.4407    0.4407         0
    0.4404    0.4407    0.4407    0.4407    0.4407
    
2a.
f = 

    @(x)exp(1).^x.^2

romberg(f,0,1,10)

F =

    3.1945


error =

  -4.1318e-12


ans =

    4.1945         0
    3.4564    3.2104
    3.2608    3.1956
    3.2111    3.1946
    3.1987    3.1945
    3.1956    3.1945
    3.1948    3.1945
    3.1946    3.1945
    3.1945    3.1945
    3.1945    3.1945
2c.

f = 

    @(x)exp(1).^cos(x)

romberg(f,0,pi,10)

F =

    3.9775


error =

  -8.8818e-16


ans =

    4.8477         0
    3.9947    3.7103
    3.9775    3.9717
    3.9775    3.9775
    3.9775    3.9775
    3.9775    3.9775
    3.9775    3.9775
    3.9775    3.9775
    3.9775    3.9775
    3.9775    3.9775
2e.
f = 

    @(x)x./((2.*exp(1).^x)-(exp(1).^-x))

romberg(f,0,1,10)

F =

    0.1610


error =

   9.7145e-16


ans =

    0.0986         0         0         0         0         0
    0.1422    0.1568         0         0         0         0
    0.1559    0.1604    0.1607         0         0         0
    0.1597    0.1610    0.1610    0.1610         0         0
    0.1607    0.1610    0.1610    0.1610    0.1610         0
    0.1609    0.1610    0.1610    0.1610    0.1610    0.1610
    0.1610    0.1610    0.1610    0.1610    0.1610         0
    0.1610    0.1610    0.1610    0.1610         0         0
    0.1610    0.1610    0.1610         0         0         0
    0.1610    0.1610    0.1610         0         0         0