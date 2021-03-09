function [max,index] = ex2d(y,len)

max = -1;
index = -1;
for i = 1:len
    if y(i) > max
        index = i;
        max = y(i);
    end
end

end


