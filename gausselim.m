function gausselim(m)
% function gausselim(m)
% This program generates an m by m matrix with random entries
% it then computes:
% 1. the elementary elimination matrices L_i;
% 2. their inverses;
% 3. the matrix A multiplied by the elimination matrices
% 4. the product in reverse order of the inverses of the elimination
%    matrices: this should be a lower triangular matrix
% 5. The product of L and U 
% 6. The difference between L*U and A
A=randn(m)-rand(m);
Asave=A;
Lsave=eye(m);
A
pause
for j=1:m-1
   Lel=eye(m);
   if A(j,j)==0 stop
   else
         for kk=j+1:m
            Lel(kk,j)=-A(kk,j)/A(j,j);
         end
      end
      j
      Lsave(j+1:m,j)=-Lel(j+1:m,j);
      Lel
      pause
      Lelinv=inv(Lel)
      pause
      A=Lel*A;
      A
      pause
   end
   U=A;
   A=Asave;
   L=Lsave;
   L
   pause
   U
   pause
   LU=L*U;
   LU
   A
   pause
   DIFF=LU-A;
   DIFF
