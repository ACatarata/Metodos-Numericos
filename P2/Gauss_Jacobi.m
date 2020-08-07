%Luiz Marcelo Pelizaro 
%Prova 2
%Exercicio 4
function [ErroRel] = ErroRel(u, v)
  if norm(v) == 0
    ErroRel = norm(u)
  else
    ErroRel = norm(((u-v)/v))
  endif 
endfunction

function [x, eRel, k] = SLGaussJacobi(A,b,tol)
  n = size(A)(1);
  C = zeros(n,n);
  d = zeros(n,1);
  for i=1 : n
    for j=1 : n
      if i~=j
        C(i,j) = -A(i,j)/A(i,i);
      endif
    endfor
    d(i) = b(i)/A(i,i);
  endfor
  k = 1;
  x = ones(n,1);
  eRel = realmax;
  while eRel > tol
    k = k+1;
    u = x;
    x = C*x + d;
    eRel = ErroRel(u,x)
  endwhile
  k
endfunction
A = [1 0 0 0 0 0 0 0 0 0;0 3 -1 0 0 0 0 0 0 0;0 -2 3 -1 0 0 0 0 0 0;0 0 -2 3 -1 0 0 0 0 0;0 0 0 -2 3 -1 0 0 0 0;0 0 0 0 -2 3 -1 0 0 0;0 0 0 0 0 -2 3 -1 0 0;0 0 0 0 0 0 -2 3 -1 0;0 0 0 0 0 0 0 -2 3 0;0 0 0 0 0 0 0 0 0 1]
b = [2;4;0;0;0;0;0;0;10;10]
tol = 0.5*10^-12
SLGaussJacobi(A,b,tol)