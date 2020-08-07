% Teste Capitulo 3 Pergunta 2
% Luiz Marcelo Pelizaro

x = 0 : 0.1 : 10;

f = @(x) x.^2 - 53;
plot(x, f(x))
xlabel("X")
ylabel("F(X)")
grid on
hold on
