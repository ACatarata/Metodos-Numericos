% Teste do Capitulo 6
% Questao 9
% Luiz Marcelo Pelizaro
x = [1960;1970;1980;1990;2000;2010]
y = [316.91;325.68;338.68;354.35;369.52;389.85]
p3 = @(x) 0.088364*exp(0.0041709*x) 
p = 2020
plot(x,y,'o', x, p3(x), p, p3(p), '^')
axis([1960 2020 315 405])
grid on
title("Luiz Marcelo ")
legend('Nodos', 'Polinimios')
xlabel('x')
ylabel('y')
a=0