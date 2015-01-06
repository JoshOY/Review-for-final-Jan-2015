function L = LagrangePolynomial(x, X, Y)
% 参数说明：
    % x 为 N次拉格朗日多项式的变量x
    % X 为 点集的横坐标向量
    % Y 为 点集的纵坐标向量
    % N 为 拉格朗日插值多项式的次数
    L = 0;
    if (length(X) ~= length(Y)),
        error('X与Y的维度应该一致。');
    end
    N = length(X);
    
    for i = 1:N,
        L = L + Y(i) * l(x, X, i);
    end
end