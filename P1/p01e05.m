% Prova P01
% Exercício 5
% Luiz Marcelo Pelizaro
f = @(x) x.*(sin(1./x));
g = @(z) (sin(z))./z;
x = -10:0.05:10;
z = -10:0.05:10;
y_a = f(x);
y_b = g(z);
plot(x, f(x), "--", x, g(z), "o")
xlabel ("x")
ylabel ("F(x) e G(x)")
title ("Luiz Marcelo Pelizaro")
