%% uppg 1
clc, close all, clear all

theta = pi/3;
rot = [cos(theta) -sin(theta); sin(theta) cos(theta)];

xy = [0 1 1 0; 0 0 1 1];
xy = rot * xy;
[n,m] = size(xy);
for i = 1:m
    xy(:,i) = xy(:,i) + [.5;.5];
end
fill(xy(1,:), xy(2,:), 'y');
axis([-1 2 -1 2]), grid on, axis equal;

%% uppg 2 och 3
clc, close all, clear all
verts = [2*sqrt(2)/3 -sqrt(2)/3 -sqrt(2)/3 0;
         0 sqrt(2/3) -sqrt(2/3) 0;
         -1/3 -1/3 -1/3 1];
inds = [1 2 4;
        1 4 3;
        3 2 4;
        1 2 3];
figure(1), clf, hold on
draw(verts, inds, 'r');
% translate 
trans = [1;0;0];
for i = 1:size(verts, 2)
    verts(:, i) = verts(:, i) + trans;
end
draw(verts, inds, 'y');

% rotate
t = pi/3;
rot = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];
draw(rot * verts, inds, 'g');

axis equal, axis tight, axis on, hold off, view(20,10), grid on
