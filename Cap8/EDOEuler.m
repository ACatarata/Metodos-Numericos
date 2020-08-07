% Teste do Capítulo 8
% Exercício 1
% Luiz Marcelo Pelizaro
function [t, u] = EDOEuler(F, a, b, ua, h)
  n = (1+(b-a)/h);
  t = zeros(n,1);
  u = zeros(n,1);
  i = 1;
  t(i) = a;
  u(i) = ua;
  while t(i) < b
    k = F(t(i), u(i));
    t(i+1) = t(i) + h;
    u(i+1) = u(i) + k*h;
    i = i+1;
  endwhile
endfunction
F = @(t, u) 1 + t - 2*u
a = 0
b = 1
u_a = 1
h = 0.2
EDOEuler(F, a, b, u_a, h)