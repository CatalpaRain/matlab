imgrgb = imread('D:\Download\Photo\OIP.jfif');
f = rgb2gray(imgrgb); %��rgbͼ��ת���ɻҶ�ͼ��
subplot(121);
imshow(f)
title('ԭʼͼ��')
%��˹��ͨ�˲�
I = double(f);
g = fft2(I); %��ά����Ҷ�任
g = fftshift(g); %Ƶ��
[M, N] = size(g);
D0 = 5; %��ֹƵ��Ϊ5
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
title('��˹��ͨ�˲����ͼ��')
