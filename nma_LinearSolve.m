function x=nma_LinearSolve(A,b)
%function x=nma_LinearSolve(A,b)
%
% Solves Ax=b
%
%
%INPUT:
%  A:  an nxn square matrix
%  b:  vector of size n
%
%OUTPUT:
%  x: the solution to A*x=b

% By Nasser M. Abbasi
% HW 4, MATH 501, CSUF
%
% Linear Solver. Solves Ax=b
% Copyright (C) 2007  Nasser Abbasi
% 
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

    if nargin ~= 2
       error 'Only two inputs are required'
    end

    if ~(isnumeric(A)&isnumeric(b))
        error 'input must be numeric'
    end

    [nRow,nCol]=size(b);
    if nRow>1 & nCol>1
        error 'b must be a vector'
    end

    [nRow,nCol]=size(A);
    if nRow ~= nCol
        error 'Matrix A must be square'
    end
    
    if length(b) ~= nRow
       error 'b length does not match A matrix dimension'        
    end
    
    b=b(:);
    
    [L,U,P] = nma_LU(A,0);
    y       = nma_ForwardSub(L,P*b);
    x       = nma_BackSub(U,y);
       
end

