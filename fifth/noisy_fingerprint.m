clc;
clear;
I = imread('noisy_fingerprint.tif');
level = graythresh(I);
I2 = im2bw(I, level);
subplot(121); imshow(I2); title('��ֵ���ָ���');
subplot(122); imshow(I); title('ԭͼ');
