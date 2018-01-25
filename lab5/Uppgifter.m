%% uppg 1a
clc, close all, clear all
T = 5;
A = [1 -2; 3 -4];
u0 = [-3;5];
F = @(t, u) A * u;
[t,U] = ode45(F, [0 T], u0);
min = -4;
max = 6;

u1 = linspace(min, max, 30); 
u2 = linspace(min, max, 30);

[U1, U2] = meshgrid(u1, u2);
F1 = A(1,1) * U1 + A(1,2) * U2; 
F2 = A(2,1) * U1 + A(2,2) * U2;

quiver(U1,U2,F1,F2,0.9);
axis([min max min max]), hold on
plot(U(:,1), U(:,2), 'r', 'LineWidth', 2);

%% uppg 1b
clc, close all, clear all

T = 6;
A = [0 3; -12 1];
u0 = [2 4];
F = @(t, u) A * u;
[t,U] = ode45(F, [0 T], u0);
min = 1;
max = 5;

u1 = linspace(min, max, 30); 
u2 = linspace(min, max, 30);

[U1, U2] = meshgrid(u1, u2);
F1 = A(1,1) * U1 + A(1,2) * U2; 
F2 = A(2,1) * U1 + A(2,2) * U2;

quiver(U1,U2,F1,F2,0.9);
axis([min max min max]), hold on
plot(U(:,1), U(:,2), 'r', 'LineWidth', 2);
