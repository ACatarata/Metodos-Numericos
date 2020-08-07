% Teste do Capítulo 8
% Exercício 1
% Luiz Marcelo Pelizaro
function [t, u] = EDORK4(F,a,b,u_a,h)
  n = 1 + ((b-a)/h)
  t = zeros(n,1)
  u = zeros(n,1)
  i = 1
  t(i) = a
  u(i) = u_a
  while t(i) < b
    k_1 = F(t(i), u(i))
    k_2 = F(t(i) + (h/2), u(i) + k_1*(h/2))
    k_3 = F(t(i) + (h/2), u(i) + k_2*(h/2))
    k_4 = F(t(i) + h, u(i) + k_3*h)
    k = (1/6)*(k_1+2*(k_2+k_3)+k_4)
    t(i+1) = t(i) + h
    u(i+1) = u(i) + k*h
    i = i+1
  endwhile
endfunction
F =@(t,u) 1+t-2*u
a = 0
b=1 
u_a = 1
h = 0.1
EDORK4(F,a,b,u_a,h)
[t,u] = ode45 (F,[a b],ua)
