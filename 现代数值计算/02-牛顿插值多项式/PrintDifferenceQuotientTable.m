function PrintDifferenceQuotientTable(x, y, N)
    % ���̼��㷽ʽ
    % ���������ڹ������̱���N�β�ֵ����ʽ
    
    if length(x) ~= length(y) 
        error('����x��y��ά����Ҫһ�¡�')
    end
    
    % nΪ����ά��
    n = length(x);
    
    if N >= n,
        error('N�β�ֵ����ʽ�е�N��Ӧ���ڵ���x��y��ά�ȡ�')
    end
    
    % tableΪ���̱�
    table = zeros(n, n);
    for i = 1 : n,
        table(i, 1) = y(i);
    end
    
    % orderΪ��ǰ��Ľ���
    for order = 1 : n-1,
        for i = (1 + order) : n,
            table(i, order + 1) = (table(i, order) - table(i - 1, order)) / (x(i) - x(i - order));
        end
    end
    
    %������̱�
    fprintf('���̱����£�\n');
    for i = 1:n,
        if i == 1,
            fprintf('f(xi)');
        else
            fprintf('%d�ײ���', i-1);
        end
        fprintf('\t\t');
    end
    fprintf('\n');
    
    for i = 1:n,
        for j = 1:n,
            if j <= i,
                fprintf('%f\t', table(i,j));
            end
        end
        fprintf('\n');
    end
    
    %�����ֵ����ʽ
    fprintf('%d�β�ֵ����ʽΪ��\nN(x)=', N);
    for i = 1:N + 1,
        if i == 1,
            fprintf('%g', table(1,1));
        else
            fprintf('%g', table(i, i));
            for j = 1:i - 1,
                fprintf('(x - (%g))', x(j))
            end
        end
        if i ~= N + 1,
            fprintf(' + ');
        end
    end
    fprintf('\n');
end