%% uppg 1
close all, clc, clear all
Aa=[1 3;5 -2]; 
ba=[6;13];
x1a=[2 4];

Ab=[1 3;2 6]; 
bb1=[5;12];
x1b1=[0 2];

bb2=[5;10];
x1b2=[0 2];

subplot(2,2,1);
plot_mat2(Aa, ba, x1a);
plot(3, 1, 'r*');
subplot(2,2,2);
plot_mat2(Ab, bb1, x1b1);
subplot(2,2,3);
plot_mat2(Ab, bb2, x1b2);
xt = @(t) [5-3*t;t];
P = [xt(0), xt(2)];
plot(P(1, :), P(2, :), 'r', 'linewidth', 3);

%% uppg 2
close all, clc, clear all

Aa=[-3 1 2;2 -2 1;-1 5 1];
ba=[2;1;1];
x1a=linspace(-1,1,30); 
x2a=linspace(-1,1,30);

Ab=[-3 1 2;3 -2 1;3 -4 7];
bb1=[2;1;1];
x1b1=linspace(-1,1,30); 
x2b1=linspace(-1,1,30);

bb2=[2;1;7];
x1b2=linspace(-1,1,30); 
x2b2=linspace(-1,1,30);

subplot(2, 2, 1);
plot_mat3(Aa, ba, x1a, x2a, 'b', 'g', 'y');
plot3(0, 0, 1, 'ro', 'linewidth', 4, 'markersize', 5);

subplot(2, 2, 2);
plot_mat3(Ab, bb1, x1b1, x2b1, 'b', 'g', 'y');

subplot(2, 2, 3);
plot_mat3(Ab, bb2, x1b2, x2b2, 'b', 'g', 'y');
xt = @(t)[5/3 * t - 5/3; 3 * t - 3; t];
P = [xt(0.5) xt(1.5)];
plot3(P(1, :), P(2, :), P(3, :), 'r', 'linewidth', 3); 



