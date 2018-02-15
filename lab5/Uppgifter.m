%% uppg 1a
clc, close all, clear all
T = 5;
A = [1 -2; 3 -4];
u0 = [-3;5];
F = @(t, u) A * u;
[t,U] = ode45(F, [0 T], u0);

vector_field(A, [-8 3 -5 5]);

plot(U(:,1), U(:,2), 'r', 'LineWidth', 2);

%% uppg 1b
clc, close all, clear all

T = 6;
A = [0 3; -12 1];
u0 = [2 4];
F = @(t, u) A * u;
[t,U] = ode45(F, [0 T], u0);

vector_field(A, [-10 10 -10 10]);
plot(U(:,1), U(:,2), 'r', 'LineWidth', 2);

%% uppg 2
clc, close all, clear all
bounds = [-5 5 -5 5];
figure('Name', 'A');
uppg2([-2 -5; 1 4], bounds, [-1 1; 3 -1; -5 0], 10);
figure('Name', 'B');
uppg2([1 -2; 3 -4], bounds, [-1 1; 3 4; -4 0; 2 -1], 10);
figure('Name', 'C');
uppg2([5 3; 3 5], bounds, [3 4; 1 -2; 0 -2], 10);
figure('Name', 'D');
uppg2([1 4; -9 1], bounds, [1 2; -1 2; -1 -2; 1 -2], 10);
figure('Name', 'E');
uppg2([-2 1; -8 2], bounds, [1 2; -1 2; 3 1; -5 2], 10);
