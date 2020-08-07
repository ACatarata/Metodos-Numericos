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
u = [1.75 ; -2.01]
v = [1.77 ; -1.99]
ErroRel(u,v)