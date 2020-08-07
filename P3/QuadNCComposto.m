% Prova 3 
% Exercicio 1
% Luiz Marcelo Pelizaro
function resultado = QuadNCComp(funcao,a,b,n,m)
if(n > 4 || n<1)
    resultado = 'ERRO';
    return;
endif
switch n
    case 1
        w = [1/2 1/2];
    case 2
        w = [1/6 4/6 1/6];
    case 3
        w = [1/8 3/8 3/8 1/8];
    case 4
       w = [7/90 32/90 12/90 32/90 7/90];
endswitch
H = ((b-a)/m);
h = H/n;
x = a;
X = a;
X_ = 0;
resultado = 0;
while X <= b
  X_ = X_ + H;
  n = 1;
  printf("X_ = %i\n",X_)
  while x <= X_
    printf("x = %i\n",x)
    resultado = resultado + (w(n)*(funcao(x)));
    x = x + h;
    n = n + 1;
  endwhile
  resultado = H*resultado;
  X = X + H;
endwhile
endfunction
funcao = @(x) sqrt(x)
a = 1
b = 4
n = 2
m = 3
QuadNCComp(funcao,a,b,n,m)