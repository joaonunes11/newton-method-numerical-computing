%% UC: 21180 - Computação Numérica
%% e-fólio A 2024-25
%% Aluno: 2300321 - João Nunes

x0_values = [1, 10];
emax = 1e-9;
kmax = 100;

for i = 1:length(x0_values)
    x0 = x0_values(i);
    [r, e, n, x] = alg_newton(@fx, @dfx, x0, emax, kmax);

    % Calcular C teórico
    C = abs(d2fx(r) / (2 * dfx(r)));

    % Print dos resultados
    fprintf('x0 = %.1f, Raiz: %.9f, Erro: %.2e, Intervalo: [%.9f, %.9f]\n', ...
        x0, r, e, r-e, r+e);
    fprintf('C teórico: %.5f\n', C);

    % Print da tabela de iterações
    fprintf('k\t xk\t\t\t Ck\n');
    for k = 1:n-1
        Ck = abs((x(k+1) - r) / (x(k) - r)^2);
        fprintf('%d\t %.9f\t %.5f\n', k-1, x(k), Ck);
    end
    fprintf('\n');
end

