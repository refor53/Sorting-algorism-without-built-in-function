function y=selectSort(x,n)

for i=1:n
    for j = i:-1:2
        if x(j-1) <= x(j)
            break
        else
            temp = x(j-1);
            x(j-1) = x(j);
            x(j) = temp;
        end
        y = x;
    end
end
