function [raiz] = secante(f,x_0,x_1,epsilon)
i = 1;
while(1 > 0)
    
    f_ant = f(x_0);
    f_atual = f(x_1);

    if abs(f_atual) < epsilon
        fprintf("Raiz encontrada: %.4f\nf(x) = %.4f\nIteraçao: %d\n", x_1, f_atual, i);
        raiz = x_1;
        break;
    end

    x_1a = x_1;
    x_1 = (x_0*f_atual - x_1*f_ant)/(f_atual - f_ant);
    x_0 = x_1a;

    i = i + 1;
end
end