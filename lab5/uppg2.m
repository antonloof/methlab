function uppg2( A, bounds, u0, T)
    vector_field(A, bounds);
    [P, D] = eig(A);
    disp(D);
    plot([0 P(1, 1)], [0 P(2, 1)], 'k');
    plot([0 P(1, 2)], [0 P(2, 2)], 'k');
    for i = 1:size(u0, 1)
        [t, U] = ode45(@(t, u) A * u, [0, T], u0(i, :));
        plot(U(:, 1), U(:, 2));
    end
    grid on
end

