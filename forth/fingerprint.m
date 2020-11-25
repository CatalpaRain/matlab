clc;
clear;
I = imread('fingerprint.tif');
SE = strel('disk', 1);
%先开后闭
I1 = imopen(I, SE);
I2 = imclose(I1, SE);
%先闭后开
I3 = imclose(I, SE);
I4 = imopen(I3, SE);
%输出
subplot(131), imshow(I);
title('原始图像');
subplot(132), imshow(I2);
title('先开后闭');
subplot(133), imshow(I4);
title('先闭后开');