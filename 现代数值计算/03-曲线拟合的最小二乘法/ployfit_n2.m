function p = ployfit_n2(x, y)
% 二次最小二乘拟合多项式
% 本函数可用MATLAB内置函数 ployfit(x, y, 2) 取代，仅供练习只用。
% x, y为维度相等的列向量
if (length(x) ~= length(y)),
    error('x与y的维度需要一致。');
end

len = length(x);

A = zeros(3, 3);
b = zeros(3, 1);

for i = 1:3,
    for j = 1:3,
        A(i, j) = sum(x .^ (i + j - 2));
    end
end

b(1) = sum(y);
b(2) = sum(x .* y);
b(3) = sum(x .* x .* y);

p = (A ^ -1) * b;

end

