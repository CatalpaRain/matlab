%�����ͨ
I = imread('D:\Download\Photo\OIP.jfif');
I=rgb2gray(I);
figure(1);
subplot(221),imshow(I);
title('ԭͼ��');
I=imnoise(I,'gaussian');%%�����˹����
subplot(222),imshow(I);
title('�����˹�������ͼ��');
s=fftshift(fft2(I));
subplot(223), imshow(log(abs(s)),[]); 
title('ͼ����Ҷ�任ȡ��������Ƶ��');
[a,b]=size(s);
a0=round(a/2);
b0=round(b/2);
d=50;
for i=1:a 
    for j=1:b 
        distance=sqrt((i-a0)^2+(j-b0)^2);
        if distance<=d
            h=1;
        else
            h=0;
        end
        s(i,j)=h*s(i,j);
    end
end
s=uint8(real(ifft2(ifftshift(s))));
subplot(224),imshow(s);
title('�����ͨ�˲�����ͼ��'); 