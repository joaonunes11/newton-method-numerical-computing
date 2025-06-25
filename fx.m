%% UC: 21180 - Computação Numérica
%% e-fólio A 2024-25
%% Aluno: 2300321 - João Nunes

function y = fx(x)
    a = -4 + 20 * log(1 + 16); % Calcular o parâmetro a
    y = -x + 20 * log(1 + x.^2) - a;
end
