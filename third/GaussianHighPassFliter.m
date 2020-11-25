imgrgb = imread('D:\Download\Photo\OIP.jfif');
f = rgb2gray(imgrgb); %将rgb图像转换成灰度图像
subplot(121);
imshow(f)
title('原始图像')
%高斯高通滤波
I = double(f);
g = fft2(I); %二维傅立叶变换
g = fftshift(g); %频移
[M, N] = size(g);
D0 = 5; %截止频率为5
m = fix(M / 2); n = fix(N / 2);

for i = 1:M

    for j = 1:N
        D = sqrt((i - m)^2 + (j - n)^2);
        H = exp(-(D.^2) ./ (2 * (D0^2)));
        result(i, j) = (1 - H) * g(i, j);
    end

end

result = ifftshift(result);
J1 = ifft2(result);
J2 = uint8(real(J1));
subplot(122);
imshow(J2)
title('高斯高通滤波后的图像')
