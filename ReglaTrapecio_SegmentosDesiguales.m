clc; clear; close all;

% Función a integrar
f = @(x) 5*x.^3 - 3*x.^2 + 2*x + 1;

% Puntos con segmentos desiguales
x = [0, 0.2, 0.5, 0.7, 1];
n = length(x);

% Evaluar f en esos puntos
y = f(x);

% Inicializar suma
I = 0;

% Aplicar la regla del trapecio con segmentos desiguales
for i = 1:n-1
    h = x(i+1) - x(i);
    I = I + (h / 2) * (y(i) + y(i+1));
end

% Valor exacto
valor_real = 2.25;

% Calcular error relativo porcentual
error_porcentual = abs((I - valor_real) / valor_real) * 100;

% Mostrar resultados
fprintf('Integral aproximada            : %.4f\n', I);
fprintf('Error relativo porcentual (%%)  : %.2f%%\n', error_porcentual);
