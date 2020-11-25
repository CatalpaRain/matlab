clear all;
close all;
P = imread('D:\Download\Photo\OIP.jfif');
subplot(121); imshow(P);
title(' 原始图像')
d = size(P);

if (d(3) > 1)
    P = rgb2gray(P);
end

% P1=imnoise(P,'salt & pepper',0.02);
% subplot(223)
% imshow (P1);
% title(' 加入椒盐噪声后的图像');
f = double(P);
g = fft2(f); % 傅里叶变换
g = fftshift(g); % 转换数据矩阵
[M, N] = size(g);
% D0=input('input nonnegative dhreshold D0=');
D0 = 10;
n1 = fix(M / 2);
n2 = fix(N / 2);

for i = 1:M

    for j = 1:N
        d = sqrt((i - n1)^2 + (j - n2)^2);

        if d <= D0 h = 0;
        else h = 1;
            %计算Ideal 高通转换函数
        end

        result(i, j) = h * g(i, j);
    end

end

result = ifftshift(result);
X2 = ifft2(result);
X3 = uint8(real(X2));
subplot(122)
imshow (X3 + P);
title(' 理想高通滤波所得图像');
