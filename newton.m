function [raiz] = newton(f,x_0,epsilon)
syms x
i = 0;
f_linha = matlabFunction(diff(f, x))
disp("k       x_n      f(x_n)        f'(x_n)")
disp("--------------------------------------")
while(1 > 0)
    
    f_x = f(x_0);
    if abs(f_x) < epsilon
        fprintf("Raiz encontrada: %.4f\nf(x) = %.4f\nIteraçao: %d\n", x_0, f_x, i);
        raiz = x;
        break;
    end
    
    f_linha_x = f_linha(x_0);
    if f_linha_x == 0
        disp("Derivada igual a zero");
        break;
    end
    fprintf("%d    %5.5f   %5.5f   %5.5f\n", i, x_0, f_x, f_linha_x);
    x_0 = x_0 - (f_x/f_linha_x);
    i = i + 1;
end
end