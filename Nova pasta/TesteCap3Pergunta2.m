% Capítulo 3
% Teste cap 3 Pergunta2
% Guilherme Sousa

x = 0 : 0.1 : 10;

f = @(x) x.^2 - 53;
plot(x, f(x))
xlabel("X")
ylabel("F(X)")
grid on
hold on
