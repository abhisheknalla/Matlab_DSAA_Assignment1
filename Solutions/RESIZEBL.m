function [] = prob1b(A,X)
    %input = rgb2gray(imread('black_white2.jpg'));
    %input = rgb2gray(imread('black_white1.jpg'));
    input = imread(A);
   
    in_rows = size(input,1);
    in_cols = size(input,2);
    out_rows = X*in_rows;
    out_cols = X*in_cols;
    
    sc = in_cols / out_cols;
    sr = in_rows / out_rows;
    

    [cf, rf] = meshgrid(1 : out_cols, 1 : out_rows);

    rf = rf * sr;
    cf = cf * sc;

    r = floor(rf);
    c = floor(cf);

    r(r < 1) = 1;
    c(c < 1) = 1;
    r(r > in_rows - 1) = in_rows - 1;
    c(c > in_cols - 1) = in_cols - 1;

    delta_R = rf - r;
    delta_C = cf - c;
    in1_ind = sub2ind([in_rows, in_cols], r, c);
    in2_ind = sub2ind([in_rows, in_cols], r+1,c);
    in3_ind = sub2ind([in_rows, in_cols], r, c+1);
    in4_ind = sub2ind([in_rows, in_cols], r+1, c+1);       

    %// Now interpolate
    out = zeros(out_rows, out_cols, size(input, 3));
    out = cast(out, class(input));

    for idx = 1 : size(input, 3)
        chan = double(input(:,:,idx));
             tmp = chan(in1_ind).*(1 - delta_R).*(1 - delta_C) + chan(in2_ind).*(delta_R).*(1 - delta_C) + chan(in3_ind).*(1 - delta_R).*(delta_C) + chan(in4_ind).*(delta_R).*(delta_C);
        out(:,:,idx) = cast(tmp, class(input));
    end
    figure(1), imshow(input)
    figure(2), imshow(out)
    disp(size(input))
    disp(size(out))

end