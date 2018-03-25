function [res] = q6( A,B )

rows = size(A,1);
cols = size(A,2);

storex = -1;
storey = -1;

a = zeros(rows,cols);
for i = 1:size(B,1)-rows + 1
    
    for j = 1:size(B,2)-cols + 1
    
        b = (B(i:i+rows-1,j:j+cols-1) == A(1:rows,1:cols));
        if(sum(sum(b)) > sum(sum(a)))
            a = b;
            storex = i;
            storey = j;
        
        end
        
    end
end

disp(storex);
disp(storey);
disp(cols);
disp(rows);


imshow(B);
hold on;

%paintcolor = [1 0 0];   %red
rectangle('Position', [storey  storex  cols  rows], 'EdgeColor','b', 'LineWidth',4);
%imshow(B,rectangle);

end

