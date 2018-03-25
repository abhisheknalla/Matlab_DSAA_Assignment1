A=[-1,-2,-1; 0,0,0; 1,2,1];
figure(1),imshow(imread('cameraman.tif'));
figure(2), imshow((conv2(imread('cameraman.tif'),A)));
B = A';
figure(3), imshow((conv2(imread('cameraman.tif'),B)));
