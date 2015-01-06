function rtn = l(x, X, i)
    n = length(X);
    rtn = 1;
    for j = 1:n,
        if j == i,
            continue;
        end
        rtn = rtn * (x - X(j)) / (X(i) -X(j));
    end
end