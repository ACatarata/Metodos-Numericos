% Teste do Capi­tulo 6
% Questao 3
% Luiz Marcelo Pelizaro
x = [4;6;7;9]
y = [1;4;7;9]
p1 = @(x) 1.6538x - 5.5
axis([4 9 0 10])
plot(x,y,'o', x, p1(x))
axis([4 9 0 10])
grid on
title(Luiz Marcelo )
legend('Nodos', 'Polinimios')
xlabel('x')
ylabel('y')
a=0