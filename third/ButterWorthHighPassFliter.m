imgrgb = imread('D:\Download\Photo\OIP.jfif');
f = rgb2gray(imgrgb); %将rgb图像转换成灰度图像
subplot(121);
imshow(f)
title('原始图像')
%巴特沃斯高通滤波
[M, N] = size(f);
a = fft2(f);
a = fftshift(a);
m1 = fix(M / 2); n1 = fix(N / 2);

for u = 1:M

    for v = 1:N
        D1 = sqrt((u - m1)^2 + (v - n1)^2);

        if D1 == 0
            H1(u, v) = 0;
        else
            %    H(u,v)=1/(1+0.414*(500/D1)^4);%
            H1(u, v) = 1 / (1 + (500 / D1)^4);
        end

    end

end

F1 = H1 .* a;
F1 = ifftshift(F1);
I2 = abs(ifft2(F1));
subplot(122);
imshow(I2)
title('巴特沃斯高通滤波后的图像')
