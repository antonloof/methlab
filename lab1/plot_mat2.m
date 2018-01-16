function plot_mat2(A, b, x1)
    l1=@(x1) (b(1)-A(1,1)*x1)/A(1,2);
    l2=@(x1) (b(2)-A(2,1)*x1)/A(2,2);
    hold on;
    plot(x1, l1(x1));
    plot(x1, l2(x1));
    xlabel('x_1'), ylabel('x_2');
end

