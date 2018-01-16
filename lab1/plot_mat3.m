function plot_mat3( A, b, x1, x2, col0, col1, col2)
    l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
    l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
    l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
    [X1,X2]=meshgrid(x1,x2);
    
    surf(X1,X2,l1(X1,X2),'facecolor', col0);
    hold on;
    surf(X1,X2,l2(X1,X2),'facecolor', col1);
    surf(X1,X2,l3(X1,X2),'facecolor', col2);
    xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
    axis vis3d, grid on, box on

end

