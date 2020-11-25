clc;
clear;
I = imread('bone.tif');
I1 = bwmorph(I, 'skel', inf); %³é¹Ç¼Ü
I2 = bwmorph(I, 'thin'); %Ï¸»¯
I3 = bwmorph(I, 'thicken'); %´Ö»¯
I4 = bwperim(I); %ÄÚ±ßÔµ
I5 = bwmorph(I, 'remove'); %Íâ±ßÔµ
subplot(231); imshow(I1); title('³é¹Ç¼Ü');
subplot(232); imshow(I2); title('Ï¸»¯');
subplot(233); imshow(I3); title('´Ö»¯');
subplot(234); imshow(I4); title('ÄÚ±ßÔµ');
subplot(235); imshow(I5); title('Íâ±ßÔµ');
subplot(236); imshow(I); title('Ô­Í¼');