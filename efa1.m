%% UC: 21180 - Computação Numérica
%% e-fólio A 2024-25
%% Aluno: 2300321 - João Nunes

x = linspace(-50, 200, 200); % 200 pontos no intervalo

% Gráfico de f(x)
figure(1);
plot(x, fx(x));
title('Função f(x)');
xlabel('x');
ylabel('f(x)');
grid on;

% Gráfico de f'(x)
figure(2);
plot(x, dfx(x));
title('Derivada f''(x)');
xlabel('x');
ylabel('f''(x)');
grid on;

% Gráfico de f''(x)
figure(3);
plot(x, d2fx(x));
title('Derivada segunda f''''(x)');
xlabel('x');
ylabel('f''''(x)');
grid on;

