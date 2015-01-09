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
    
    fprintf('先用高斯法解出U：\n');
    disp(U);
    
    L = A * (U ^ -1);
    fprintf('然后L左乘U，视作对U进行行变换后可得到A，于是有L = \n');
    disp(L);
    
    fprintf('\nLy=b，于是有y = \n');
    y = (L ^ -1) * b;
    disp(y);
    
    fprintf('\nUx=y，于是有x = \n');
    x = (U ^ -1) * y;
    
    fprintf('\n最后得到x，返回。\n');
    disp(x);
    
end