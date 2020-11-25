%������˹��ͨ
figure;
I = rgb2gray(imread('D:\Download\Photo\OIP.jfif'));
subplot(131), imshow(I);
title('ԭʼͼ��');
I1 = imnoise(I, 'gaussian'); %�����˹������
subplot(132), imshow(I1);
title('�����������ͼ��');
f = double(I1); %��������ת��
g = fft2(f); %ͼ����Ҷת��
g = fftshift(g); %����Ҷ�任ƽ��
F2 = log(abs(g)); %�Ը���Ҷ�任���ȡ����ֵ��Ȼ��ȡ����
[N1, N2] = size(g); %����Ҷ�任ͼ��ߴ�
n = 2; %��������ʼֵ
d0 = 30;
n1 = fix(N1 / 2); %����Բ��
n2 = fix(N2 / 2); %����Բ��

for i = 1:N1%����ͼ������

    for j = 1:N2
        d = sqrt((i - n1)^2 + (j - n2)^2);

        if d == 0
            h = 0;
        else
            h = 1 / (1 + (d / d0)^(2 * n));
        end

        result(i, j) = h * g(i, j); %ͼ�������㴦��
    end

end

F3 = log(abs(result)); %�Ը���Ҷ�任���ȡ����ֵ��Ȼ��ȡ����
result = ifftshift(result);
X2 = ifft2(result);
X3 = uint8(real(X2));
subplot(133), imshow(uint8(X3))
title('Butterworth��ͨ�˲�ͼ��');
