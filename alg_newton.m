%% UC: 21180 - Computação Numérica
%% e-fólio A 2024-25
%% Aluno: 2300321 - João Nunes

function [r, e, n, x] = alg_newton(f, df, x0, emax, kmax)
    x = x0;
    for n = 1:kmax
        x(n+1) = x(n) - f(x(n)) / df(x(n));
        e = abs(x(n+1) - x(n));
        if e < emax
            break;
        end
    end
    r = x(n+1);
    x = x(1:n+1); % Retornar apenas iterações realizadas
end

