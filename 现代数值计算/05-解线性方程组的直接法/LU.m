function x = LU(A, b)
    U = A;
    sizeA = size(A);
    I = sizeA(1);
    J = sizeA(2);
    
    for i = 1 : I - 1,
        for j = i + 1 : I,
            U(j, :) = U(j, :) - (U(j, i) / U(i, i)) * U(i, :);
        end
    end
    
    fprintf('���ø�˹�����U��\n');
    disp(U);
    
    L = A * (U ^ -1);
    fprintf('Ȼ��L���U��������U�����б任��ɵõ�A��������L = \n');
    disp(L);
    
    fprintf('\nLy=b��������y = \n');
    y = (L ^ -1) * b;
    disp(y);
    
    fprintf('\nUx=y��������x = \n');
    x = (U ^ -1) * y;
    
    fprintf('\n���õ�x�����ء�\n');
    disp(x);
    
end