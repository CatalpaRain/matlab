%��һ��ֱ��ͼ
clear,clc;
close all;
I = imread('D:\Download\Photo\OIP.jfif'); % ��ȡͼƬ
J = my_histeq(I,256);   
figure;                   % ��������
subplot(1,2,1),imshowpair(I,J,'montage'); title('��һ��ԭͼ,ת��ͼ');
subplot(1,2,2),my_hist(J); title('��һ��ֱ��ͼ');
