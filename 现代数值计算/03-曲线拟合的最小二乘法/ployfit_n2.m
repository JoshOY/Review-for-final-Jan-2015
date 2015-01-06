function p = ployfit_n2(x, y)
% ������С������϶���ʽ
% ����������MATLAB���ú��� ployfit(x, y, 2) ȡ����������ϰֻ�á�
% x, yΪά����ȵ�������
if (length(x) ~= length(y)),
    error('x��y��ά����Ҫһ�¡�');
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

