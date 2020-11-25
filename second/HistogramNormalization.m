%归一化直方图
clear,clc;
close all;
I = imread('D:\Download\Photo\OIP.jfif'); % 读取图片
J = my_histeq(I,256);   
figure;                   % 创建窗口
subplot(1,2,1),imshowpair(I,J,'montage'); title('归一化原图,转换图');
subplot(1,2,2),my_hist(J); title('归一化直方图');
