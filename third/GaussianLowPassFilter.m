%��˹��ͨ
I = rgb2gray(imread('D:\Download\Photo\OIP.jfif'));
IA = imnoise(I, 'gaussian'); %%�����˹������
subplot(131), imshow(IA);
title('�����������ͼ��');
[f1, f2] = freqspace(size(IA), 'meshgrid');
D = 100 / size(IA, 1);
r = f1.^2 + f2.^2;
Hd = ones(size(IA));

for i = 1:size(IA, 1)

    for j = 1:size(IA, 2)
        t = r(i, j) / (D * D);
        Hd(i, j) = exp(-t);
    end

end

Y = fft2(double(IA));
Y = fftshift(Y);
Ya = Y .* Hd;
Ya = ifftshift(Ya);
Ia = real(ifft2(Ya));
subplot(132), imshow(uint8(I));
title('ԭͼ��');
subplot(133), imshow(uint8(Ia));
title('��˹��ͨ�˲�����');