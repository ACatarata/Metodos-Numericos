%Teste 10 Capitulo 3
%Luiz Marcelo Pelzaro
f = @(x) x.^3 - 2*x - 5;
fl = @(x) 3*x.^2 - 2;
function [errel] = erroRelativo(x1, x2)
  if(x2==0)
    errel = x1;
  else
    errel = (x1-x2)/x2;
   endif
endfunction
function [x, erel, k] = zeroNewton(f, fl, x, tol, kmax)
  k = 1;
  F = f(x);
  D = fl(x);
  erel = realmax;
  while (k<kmax && abs(erel)>tol)
    k = k+1;
    u = x;
    x = x-(F/D);
    D = fl(x);
    erel = erroRelativo(u, x);
  endwhile
endfunction