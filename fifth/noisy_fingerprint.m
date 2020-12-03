clc;
clear;
I = imread('noisy_fingerprint.tif');
level = graythresh(I);
I2 = im2bw(I, level);
subplot(121); imshow(I2); title('二值化分割结果');
subplot(122); imshow(I); title('原图');
