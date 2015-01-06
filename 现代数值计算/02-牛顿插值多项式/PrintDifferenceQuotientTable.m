function PrintDifferenceQuotientTable(x, y, N)
    % 差商计算方式
    % 本函数用于构建差商表及其N次插值多项式
    
    if length(x) ~= length(y) 
        error('向量x和y的维度需要一致。')
    end
    
    % n为向量维度
    n = length(x);
    
    if N >= n,
        error('N次插值多项式中的N不应大于等于x、y的维度。')
    end
    
    % table为差商表
    table = zeros(n, n);
    for i = 1 : n,
        table(i, 1) = y(i);
    end
    
    % order为当前求的阶数
    for order = 1 : n-1,
        for i = (1 + order) : n,
            table(i, order + 1) = (table(i, order) - table(i - 1, order)) / (x(i) - x(i - order));
        end
    end
    
    %输出差商表：
    fprintf('差商表如下：\n');
    for i = 1:n,
        if i == 1,
            fprintf('f(xi)');
        else
            fprintf('%d阶差商', i-1);
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
    
    %输出插值多项式
    fprintf('%d次差值多项式为：\nN(x)=', N);
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