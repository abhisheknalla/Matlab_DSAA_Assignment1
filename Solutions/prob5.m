function [] = prob5(A)
    M = [1 2 1; 0 0 0; -1 -2 -1];
    B = convn(double(A),M);
    C = convn(double(A),M.');
    D = B + C;
    figure;
    figure(1), imshow(B);
    title('with M');
    figure(2), imshow(C);
    title('with M transpose');
    figure(3), imshow(D);
    title('Adding M and M-t');
end    
    