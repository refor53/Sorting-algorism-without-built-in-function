function y = quickShorting(vector,count)

if count<2
    y = vector;
else
pivot = vector(1);
l = [];
r = [];
count_l=0; count_r=0;
    for i = 2:count
         if vector(i) < pivot
            l = [l vector(i)];
            count_l = count_l + 1;
         elseif vector(i) >= pivot
            r = [r vector(i)];
            count_r = count_r + 1;  
         end
    end
y = [quickShorting(l,count_l) pivot quickShorting(r,count_r)];

end