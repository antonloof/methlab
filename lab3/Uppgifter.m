%% uppg 1
clc, close all, clear all

theta = pi/3;
rot = [cos(theta) -sin(theta); sin(theta) cos(theta)];

xy = [0 1 1 0; 0 0 1 1];
xy = rot * xy;
[n,m] = size(xy);
for i = 1:m
    xy(:,i) = xy(:,i) + [,5;.5];
end
fill(xy(1,:), xy(2,:), 'y');
axis([-1 2 -1 2]), grid on, axis equal;

%% uppg 2

verts = [];
inds = [];
figure(1), clf, hold on
draw(verts, inds, 'y');
axis equal, axis tight, axis off, hold off, view(20,10)
