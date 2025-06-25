%% UC: 21180 - Computação Numérica
%% e-fólio A 2024-25
%% Aluno: 2300321 - João Nunes

function y = d2fx(x)
    y = (40 * (1 - x.^2)) ./ ((1 + x.^2).^2);
end
