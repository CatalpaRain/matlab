clear all;
close all;
P = imread('D:\Download\Photo\OIP.jfif');
subplot(121); imshow(P);
title(' ԭʼͼ��')
d = size(P);

if (d(3) > 1)
    P = rgb2gray(P);
end

% P1=imnoise(P,'salt & pepper',0.02);
% subplot(223)
% imshow (P1);
% title(' ���뽷���������ͼ��');
f = double(P);
g = fft2(f); % ����Ҷ�任
g = fftshift(g); % ת�����ݾ���
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
            %����Ideal ��ͨת������
        end

        result(i, j) = h * g(i, j);
    end

end

result = ifftshift(result);
X2 = ifft2(result);
X3 = uint8(real(X2));
subplot(122)
imshow (X3 + P);
title(' �����ͨ�˲�����ͼ��');
