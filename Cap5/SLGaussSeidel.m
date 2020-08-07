% Teste do Capítulo 4
% Exercício 3
% Luiz Marcelo Pelizaro
function [ErroRel] = ErroRel(u, v)
  if norm(v) == 0

    ErroRel = norm(u)
  else
    ErroRel = norm(((u)-(v))/(v))
  endif 
endfunction
function [SLGaussSeidel] = SLGaussSeidel (A,b,tol,Kmax)
  n = size(A)(1)
  C = zeros(n,n)
  d = zeros(n,1)
  for i = 1:n
    for j = 1:n
      if i!=j 
        C(i,j) = -A(i,j)/A(i,i)
      endif
    endfor
    d(i,:) = b(i,:)/A(i,i)
  endfor
  k = 1
  x = ones(n,1)
  Erel = +inf
  while k < Kmax && Erel >tol
    k = k +1
    u = x
    for i = 1:n
      x(i,:) = C(i,:)*x+d(i,:)
    endfor
    Erel = ErroRel(u,x)
  endwhile
endfunction
