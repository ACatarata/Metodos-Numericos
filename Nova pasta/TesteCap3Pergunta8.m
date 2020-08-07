% Capítulo 3
% Teste cap 3 Pergunta2
% Guilherme Sousa

x = -3 : 0.1 : 3;

f = @(x) x.^2 - 2*x - 5;
plot(x, f(x))
xlabel("X")
ylabel("F(X)")
grid on
hold on