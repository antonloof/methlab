%% Uppg1
clc, clear all, close all
A = [1 4 7 10; 2 5 8 11; 3 6 9 12];
B = [4 5 6; 3 2 1; 1 1 1];
c = [1;3;5];
d = [0 2 4];
% a
A(:, 3) = c;
B(2, :) = d;
% b
t = A(1, :);
A(1, :) = A(3, :);
A(3, :) = t;

t = A(:, 2);
A(:, 2) = A(:, 4);
A(:, 4) = t;
disp(A);

%% Uppg2
clc, clear all, close all
b1 = [4;3;1];
b2 = [5;2;1];
b3 = [6;1;1];
B = [b1 b2 b3];

%% Uppg3
clc, clear all, close all
A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
A11 = A(1:2, 1:2);
A12 = A(1:2, 3:4);
A21 = A(3:4, 1:2);
A22 = A(3:4, 3:4);


A2 = [A11 A12; A21 A22];
isequal(A, A2)

%% Uppg4
clc, clear all, close all

A = [1 5 9; 2 6 10; 3 7 11; 4 8 12];
B = [4 5 6; 3 2 1; 1 1 1];
x = [1;1;1];
a = [-1 0 1];
A * x
B * x
A * B
a * x
x * a
a * B

%% Uppg5
clc, clear all, close all

A = [1 0 0; 0 1 0; 1 0 1];
B = [1 0 0; -2 1 0; 0 0 1];
C = [2 1 1; 4 1 0; -2 2 1];
%a
isequal(A * (B * C), (A * B) * C)
isequal(A * (B + C), A * B + A * C)
isequal((B + C) * A, B * A + C * A)
%b
isequal(A * C, C * A)
isequal(B * C, C * B)
isequal(A * B, B * A)

%% Uppg6
clc, clear all, close all

n = 9;
ett = ones(n, 1);
A = spdiags([-ett, 4*ett, -ett], [-1 0 1], n, n);
b = [20 + 80; 20; 20 + 100; 80; 0; 100; 80 + 40; 40; 40 + 100];
rref([A b])

