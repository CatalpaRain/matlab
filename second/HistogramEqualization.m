%ֱ��ͼ���⻯
i = imread('D:\Download\Photo\OIP.jfif');
i = rgb2gray(i);
subplot(1,3,1), imshow(i);title('ԭͼ');

j = my_histeq(i,200);

subplot(1,3,2), imshow(j);title('ֱ��ͼ���⻯');

subplot(1,3,3), my_hist(j);title('ֱ��ͼ');