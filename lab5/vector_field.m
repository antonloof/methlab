function vector_field( A, bounds)
    u1 = linspace(bounds(1), bounds(2), 30); 
    u2 = linspace(bounds(3), bounds(4), 30);

    [U1, U2] = meshgrid(u1, u2);
    F1 = A(1,1) * U1 + A(1,2) * U2; 
    F2 = A(2,1) * U1 + A(2,2) * U2;
    quiver(U1,U2,F1,F2,0.9);
    axis(bounds)
    hold on
end

