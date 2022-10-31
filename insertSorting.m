function y = insertSorting(x,N)

if N <= 1
    y=x;
    return
else

    
s = [x(1)];
u = [x(2:N)];

for i=1:N
    for j = i:-1:1
        if s(j) <= u(1)
            s = [s(1:j) u(1) s(j+1:end)];
            u = [u(2:end)];
            break
        elseif j==1 && s(1) > u(1)
            s = [u(1) s];
        end
    end
end
y = s(2:end);
end

