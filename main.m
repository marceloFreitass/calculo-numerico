clear all
clc
% grafico
% x = linspace(1,10,10000);
% y = x.*log10(x) - 1;
% plot(x,y)
% hline = refline(0, 0);
% hline.Color = 'k'

f = @(x) x^5 + 2*x^4 -x^3 + x^2 + 5*x - 1;
a = 0.17;
b = 2;
epsilon = 0.00000001;
x1 = bisseccao(f, a, b, epsilon);
x2 = falsa_posicao(f, a, b, epsilon);
