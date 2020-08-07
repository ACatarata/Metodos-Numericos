% Teste do Capítulo 4
% Exercício 4
% Luiz Marcelo Pelizaro
function [ErroRel] = ErroRel(u, v)
  if norm(v) == 0

    ErroRel = norm(u)
  else
    ErroRel = norm(((u)-(v))/(v))
  endif 
endfunction
function [SLGaussJacobi] = SLGaussJacobi(A,b,tol,Kmax)
  n = size(A)(1)
  C = zeros(n,n)
  d = zeros (n,1)
  for i = 1:n
    for j = 1: n
      if i != j 
        C(i,j) = -A(i,j)/A(i,i)
      endif
    endfor
    d(i) = b(i)/A(i,i)
  endfor
  k = 1
  x = ones(n,1)
  erel = realmax
  while k < Kmax && erel > tol
    k = k+1
    u = x
    x = C*x +d
    erel = ErroRel(u,x)
  endwhile
endfunction
u = [20 5 1;-2 10 2;1 4 10]
v = [32 ; -20;14]
SLGaussJacobi(u,v,0.1,4)