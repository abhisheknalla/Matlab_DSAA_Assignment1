input = [12, 20, 3, 10, 22, 19, 23, 16, 0, 21, 23, 16, 18];
output = [75, 52, 33, 97, 251, 211, 63, 65];
a = ones([1,6]);

for i = 1:8
    for j = 1:6
        a(i,j) = input(1,j+i-1);
    end
end

a = a(1:6,1:6);
b = inv(a);
%whos b
mat = output(1:6)*b;
disp(mat);