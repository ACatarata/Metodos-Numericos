% Teste do Cap�tulo 6
% Exerc�cio 4
% Luiz Marcelo Pelizaro
clc
clear
function [X] = MVander(x,m)
  n = length(x)
  X = zeros(n, m+1)
  for i=1 : n
    X(i, m+1) = 1
    for j=m : -1 : 1
      X(i,j) = x(i)*X(i,j+1)
    endfor
  endfor
endfunction
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
function [x] = SLGauss (A,b)
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
function [Beta,Y,Sqe] = AjustePol (x,y,m)
  X = MVander(x,m)
  A = X'*X
  b = X'*y
  Beta = SLGauss(A,b)
  Y = X*Beta;
  Sqe = norm(y -Y)^2
endfunction
x = [-1;0;1;3;4]                    
y = [2;1;2;4;6]
m = 2
AjustePol (x,y,m)