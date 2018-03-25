function [] = RESIZENN(A,X)
scale = [X X];
inputImage = imread(A);
%inputImage = rgb2gray(imread('black_white2.jpg'));
%inputImage = rgb2gray(imread('black_white1.jpg'));
%inputImage = imread('coloured1.png');
oldSize = size(inputImage);                   
newSize = max(floor(scale.*oldSize(1:2)),1);  

rowIndex = min(round(((1:newSize(1))-0.5)./scale(1)+0.5),oldSize(1));
colIndex = min(round(((1:newSize(2))-0.5)./scale(2)+0.5),oldSize(2));


outputImage = inputImage(rowIndex,colIndex,:);
size(inputImage)
size(outputImage)
figure(1), imshow(inputImage)
figure(2), imshow(outputImage)
end