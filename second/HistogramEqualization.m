%直方图均衡化
i = imread('D:\Download\Photo\OIP.jfif');
i = rgb2gray(i);
subplot(1,3,1), imshow(i);title('原图');

j = my_histeq(i,200);

subplot(1,3,2), imshow(j);title('直方图均衡化');

subplot(1,3,3), my_hist(j);title('直方图');