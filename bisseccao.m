function [raiz] = bisseccao(f,a,b,epsilon)
i = 0;
disp("k       a_k      b_k        f(a_k)      f(b_k)      x_k+1     f(x_k+1)")
disp("------------------------------------------------------------------")
while(1 > 0)
    f_a = f(a);
    f_b = f(b);
    x = (a + b)/2;
    f_x = f(x);
    fprintf("%d    %5.5f   %5.5f   %5.5f   %5.5f   %5.5f    %5.5f\n", i, a, b, f_a, f_b, x, f_x);
    if f_a*f_x < 0
        b = x;
    elseif f_x*f_b < 0
            a = x;
    else
        disp("Sem raiz no intervalo inicial");
        break;
    end
    if abs(f_x) < epsilon
        fprintf("Raiz encontrada: %.4f\nf(x) = %.4f\nIteraçao: %d\n", x, f(x), i);
        raiz = x;
        break;
    end
    i = i + 1;
end
end