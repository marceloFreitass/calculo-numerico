clear all
clc
% grafico
% x = linspace(1,10,10000);
% y = x.*log10(x) - 1;
% plot(x,y)
% hline = refline(0, 0);
% hline.Color = 'k'

f = @(x) log(x)+x - 5;
a = 3;
b = 4;
epsilon = 0.0001;
%x1 = bisseccao(f, a, b, epsilon);
%x2 = falsa_posicao(f, a, b, epsilon)
%x3  = newton(f, a, epsilon);
x5 = secante(f, a, b, epsilon);