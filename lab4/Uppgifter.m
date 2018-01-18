%% uppg 1
clc,  close all,  clear all
xmin = -2; 
xmax = 2; 
ymin = -2; 
ymax = 2;
a = 1; 
b = -1; 
c = 4; 
d = 1;
n = [a;b;c];
X = [xmin xmax xmax xmin]; 
Y = [ymin ymin ymax ymax];
Z = @(x, y)(d - a * x - b * y) / c;
x = [1;1;1];
fill3(X, Y, Z(X, Y), 'y', 'facealpha', 0.7)
hold on
quiver3(1, 0, 0, a, b, c, 0, 'linewidth', 2);
text(1 + a/2, b/2, c/2 ,'n');
plot3(x(1), x(2), x(3), 'ro', 'linewidth', 6);
text(x(1), x(2), x(3), 'x');
xlabel('x'), ylabel('y')
axis equal, grid on
alfa = (d-dot(n,x))/(dot(n,n));
x_r = x + 2 * alfa * n;
x_h = x + alfa * n;
plot3(x_h(1), x_h(2), x_h(3), 'ro', 'linewidth', 6);
plot3(x_r(1), x_r(2), x_r(3), 'ro', 'linewidth', 6);
text(x_r(1), x_r(2), x_r(3), 'x_r');
text(x_h(1), x_h(2), x_h(3), 'x_h');

%% uppg 2
clc,  close all,  clear all
verts = [2*sqrt(2)/3 -sqrt(2)/3 -sqrt(2)/3 0;
         0 sqrt(2/3) -sqrt(2/3) 0;
         -1/3 -1/3 -1/3 1];
inds = [1 2 4;
        1 4 3;
        3 2 4;
        1 2 3];
clf, hold on, axis equal, grid on, view(-37.5, 30);

trans = [0;0;2];
for i = 1:size(verts, 2)
    verts(:, i) = verts(:, i) + trans;
end

draw(verts, inds, 'r');

xmin = -2; 
xmax = 2; 
ymin = -2; 
ymax = 2;
a = 1; 
b = -1; 
c = 4; 
d = 1;
n = [a;b;c];
X = [xmin xmax xmax xmin]; 
Y = [ymin ymin ymax ymax];
Z = @(x, y)(d - a * x - b * y) / c;
fill3(X, Y, Z(X, Y), 'y', 'facealpha', 0.7);

for i = 1:size(verts, 2)
    alfa = (d-dot(n,verts(:, i)))/(dot(n,n));
    verts(:, i) = verts(:, i) + 2 * alfa * n;
end

draw(verts, inds, 'r');
verts = [2*sqrt(2)/3 -sqrt(2)/3 -sqrt(2)/3 0;
         0 sqrt(2/3) -sqrt(2/3) 0;
         -1/3 -1/3 -1/3 1];
inds = [1 2 4;
        1 4 3;
        3 2 4;
        1 2 3];
for i = 1:size(verts, 2)
    alfa = (d-dot(n,verts(:, i)))/(dot(n,n));
    verts(:, i) = verts(:, i) + alfa * n;
end

draw(verts, inds, 'r');
%% uppg 3

phi=pi/15;
A = [1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
v = [1;2;3]; 
v = v/norm(v); 
Z = null(v'); 
P = [v,Z];

if det(P) < 0
    P(:,[2 3]) = P(:,[3 2]); 
end

Av = P * A * P';
x=[0.7; 0.2; 0.2];
plot3(x(1), x(2), x(3), 'mo'), hold on

for i = 1:29
    x = Av * x;
    plot3(x(1), x(2), x(3), 'yo');
end

plot3([-v(1) v(1)], [-v(2) v(2)], [-v(3) v(3)], 'r', 'linewidth', 3);
box on, grid on, hold off
axis equal, axis([-2 2 -2 2 -2 2]), axis vis3d