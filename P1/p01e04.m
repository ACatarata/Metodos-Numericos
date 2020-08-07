% Prova P01
% Exercicio 1
% Luiz Marcelo Pelizaro
function f = fib(n)
  if (n <= 1)
    f = n;
  else
    f = fib(n - 1) + fib(n - 2);
  endif
endfunction
function r = dib(n)
 if (n <= 1)
    r = n;
  else
    r = fib(n - 1) / fib (n - 2);	 
  endif
endfunction
for i = 1 : 1000
  printf("%d, ", fib(i));
  printf("%d, ", dib(i));
endfor