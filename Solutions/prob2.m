function [ image ] = prob2( img,matrix )
  [rows,cols] = size(img); 
  figure(1), imshow(img);
  new_img = zeros(rows+2,cols+2);
  new_img = cast(new_img, class(img));

  new_img(2:end-1,2:end-1) = img;

  image = zeros(size(new_img));
  image = cast(image, class(img));

  for i=2:1:rows+1
    for j=2:1:cols+1
      value=0;
      for g=-1:1:1
        for l=-1:1:1
          value=value+new_img(i+g,j+l)*matrix(g+2,l+2); 
        end
      end
     image(i,j)=value;
    end
  end
image = image(2:end-1,2:end-1);
figure(2), imshow(image);
end

%% B = prob2(imread('cameraman.tif'),A); to run the file
%% imshow(uint8(conv2(imread('cameraman.tif'),A))); to get output using conv2
