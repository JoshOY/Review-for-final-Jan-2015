function L = LagrangePolynomial(x, X, Y)
% ����˵����
    % x Ϊ N���������ն���ʽ�ı���x
    % X Ϊ �㼯�ĺ���������
    % Y Ϊ �㼯������������
    % N Ϊ �������ղ�ֵ����ʽ�Ĵ���
    L = 0;
    if (length(X) ~= length(Y)),
        error('X��Y��ά��Ӧ��һ�¡�');
    end
    N = length(X);
    
    for i = 1:N,
        L = L + Y(i) * l(x, X, i);
    end
end