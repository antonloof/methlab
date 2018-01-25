%% uppg 1
clc, close all, clear all
td = [5 6 7 8 9 10]';
yd = [19.5888 23.4043 25.5754 29.1231 31.9575 35.8116]';
A = [ones(size(td)) td];
km = (A'*A) \ (A' * yd);
y = @(x) km(2) * x + km(1);

xs = 4:11;

plot(xs, y(xs), 'y');
hold on
for i = 1:size(td, 1)
    plot(td(i), yd(i), 'ob');
end 
norm(A * km - yd) / sqrt(size(td, 1))
%% uppg 2
clc, close all, clear all
td = [1 2 3 4 5 6 7 8 9 10 11 12]';
yd = [-0.9 -0.9 2.0 6.0 11.6 15.5 16.6 16.2 12.8 9.1 4.4 1.0]';
w = 2 * pi / 12;
A = [ones(size(td)) sin(w * td) cos(w * td)];
c = (A' * A) \ (A' * yd);
y = @(x) c(1) + c(2) * sin(w * x) + c(3) * cos(w * x);

xs = -0:0.1:14;
plot(xs, y(xs), 'y');
hold on
for i = 1:size(td, 1)
    plot(td(i), yd(i), 'ob');
end
norm(A * c - yd) / sqrt(size(td, 1))
%% uppg 3
clc, close all, clear all
load('labdata');
A = [ones(size(td)) sd td];
c = (A' * A) \ (A' * yd);
z = @(x, y) c(1) + c(2) * x + c(3) * y;
[tds, sds] = meshgrid([28 33], [40 78]);
surf(sds, tds, z(sds, tds));
hold on

for i = 1:size(td, 1)
    plot3(sd(i), td(i), yd(i), 'oy');
end
norm(A * c - yd) / sqrt(size(td, 1))
