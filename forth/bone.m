clc;
clear;
I = imread('bone.tif');
I1 = bwmorph(I, 'skel', inf); %��Ǽ�
I2 = bwmorph(I, 'thin'); %ϸ��
I3 = bwmorph(I, 'thicken'); %�ֻ�
I4 = bwperim(I); %�ڱ�Ե
I5 = bwmorph(I, 'remove'); %���Ե
subplot(231); imshow(I1); title('��Ǽ�');
subplot(232); imshow(I2); title('ϸ��');
subplot(233); imshow(I3); title('�ֻ�');
subplot(234); imshow(I4); title('�ڱ�Ե');
subplot(235); imshow(I5); title('���Ե');
subplot(236); imshow(I); title('ԭͼ');