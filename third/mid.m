t=imread('D:\Download\Photo\OIP.jfif');
t1=imnoise(t,'salt & pepper',0.3);
subplot(1,3,1),imshow(t1),title('加入椒盐噪声');
t2=imnoise(t,'gaussian',0,0.02);
subplot(1,3,2),imshow(t1),title('加入高斯噪声');
t3=median_filter(t,3);
subplot(1,3,3),imshow(t),title('中值滤波后')