%Teste Capitulo 3 Pergunta 6
%Luiz Marcelo Pelizaro
f = @(x) x.^2 - 53;
function [errel] = erroRelativo(x1, x2)
  if(x2==0)
    errel = x1;
  else
    errel = (x1-x2)/x2;
   endif
endfunction
function [x, erel, k] = zeroBissecao(f, a, b, tol, kmax)
  tol = 0.5*10^-12
  k = 1;
  x = (1/2)*(a+b);
  fx = f(x);
  fa = f(a);
  fb = f(b);
  erel = realmax;
  while (k<kmax && abs(erel)>tol)
    if (fx*fa<= 0)
      b = x;
      fb = fx;
    else
      a = x;
      fa = fx;
    endif
     k = k+1;
     u = x;
     x = (1/2)*(a+b); 
     fx = f(x);
     erel = erroRelativo(u, x);
  endwhile
endfunction