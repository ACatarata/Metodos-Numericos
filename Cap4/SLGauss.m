% Teste do Capítulo 4
% Exercício 2
% Luiz Marcelo Pelizaro
function [C] = PivoParcial(C, n, j)
  p = abs(C(j,j));
  k = j;
  
  for i = j+1 : n
    if abs(C(i,j)) > p
      p = abs (C(i,j));
      k = i;
    endif
  endfor
  if p == 0 
    print("Erro : Pivotamento Impossivel")
  endif
  if k > j
    T = C(j,:)
    C(j,:) = C(k,:)
    C(k,:) = T
  endif
endfunction

function [G] = SLGauss (A,b)
  n = size(A)(1)
  C = [A b] 
  for j = 1 : n-1
    C = PivoParcial(C,n,j)
    for i= j+1 : n
      m = -C(i,j)/C(j,j)
      C(i,:) = C(i,:) + m*C(j,:)
    endfor
  endfor
  x = zeros(n,1)
  for i = n : -1:1
    x(i) = (C(i,n+1)-C(i,1:n)*x)/C(i,i)
  endfor
endfunction

