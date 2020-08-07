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

function [CoefSpline3] = CoefSpline3(x,y)
  n = size (x)
  h = zeros(n-1,1)
  p = zeros (n-1,1)
  for k = 1:n-1
    h(k) = x(k+1) - x(k)
    p(k) = (y(k+1) - y(k))/h(k)
  endfor
  %Determinaçao de H P e M
  H = zeros(n,n)
  P = zeros(n,1)
  H(1,1) = 1
  P(1) = 0
  for k = 2 : n-1
    H(k,k-1) = h(k-1);
    H(k,k) = 2*(h(k-1)+h(k));
    H(k,k+1) = h(k);
    P(k) = 6*(p(k)-p(k-1));
  endfor
  H(n,n) =1
  P(n) = 0
  m = SLGaussSeidel(H,P,0.5*10**-12,100)
  %Determinando Coefisiente
  C = zeros(n-1.4)
  for k =1 :n-1
    C(k,1) =(m(k+1) - m(k))/(6*h(k))
    C(k,2) = m(k)/2
    C(k,3) = p(k) -((2*m(k)+m(k+1)*h(k)))/6
    C(k,4) = y(k)
  endfor
endfunction

function [ISlipne3] = ISlipne3(x,y,u)
  C = CoefSpline3(x,y)
  n = size(x)
  r = size(u)
  v = zeros(r,1)
  for i =1: r
    k =1
    while u(i)>x(k+1) && k <n-1
      k = k+1
    endwhile
    t = u(i)-x(k)
    v(i) = ((C(k,1)*t+C(k,2))*t+C(k,3))*t+C(k,4)
  endfor
endfunction
x = [0;1;4;6]
y = [1.0;2.3;2.2;3.7]
u = 5
v = ISlipne3(x,y,u)
