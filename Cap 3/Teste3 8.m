%Teste Capitulo 3 Pergunta 8
%Luiz Marcelo Pelizaro

x = -3 : 0.1 : 3;

f = @(x) x.^2 - 2*x - 5;
plot(x, f(x))
xlabel("X")
ylabel("F(X)")
grid on
hold on