% Cap 4
% 4.1.1 - Exemplo: Verificação Gráfica das Soluções do Sistema Linear
% Luiz Marcelo
X = -10000 : 100 : 10000;
f = @(X) 3000 - X;
g = @(X) 400 + X;
plot(X, f(X), X, g(X))
Xlabel("X")
ylabel("Y")
grid on
title("EXemplo 4.1.1-Luiz")