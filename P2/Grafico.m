% Prova2
% Questao 9
% Luiz Marcelo Pelizaro
x =[50;52;54;56;58;60]
y =[2.75;1.45;0.5;0.15;0.2;0.85]
X =56.51;
p =@(x)0.061384*x.^2-6.946518*x + 196.639286
plot(x,y,'o', x, p(x), X, p(X), '^')
axis([100 0 0.2 3])
grid on
title("Luiz Marcelo Pelizaro")
legend('Nodos', 'Polinimios','Angulos')
xlabel('x')
ylabel('y')
X=0