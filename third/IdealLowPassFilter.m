%理想低通
I = imread('D:\Download\Photo\OIP.jfif');
I=rgb2gray(I);
figure(1);
subplot(221),imshow(I);
title('原图像');
I=imnoise(I,'gaussian');%%加入高斯噪声
subplot(222),imshow(I);
title('加入高斯噪声后的图像');
s=fftshift(fft2(I));
subplot(223), imshow(log(abs(s)),[]); 
title('图像傅里叶变换取对数所得频谱');
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
title('理想低通滤波所得图像'); 