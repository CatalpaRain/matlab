%��ȡ,��ʾԭʼRGB
rgb = imread('D:\Download\Photo\moons.jpg');
subplot(1, 3, 1), imshow(rgb), title("RGB");
%չʾת��ΪHSI��ͼ��
hsi = rgb2hsi(rgb);
subplot(1, 3, 2), imshow(hsi), title("HSI");
%չʾ����ת����ͼ��
rgb = hsi2rgb(hsi);
subplot(1, 3, 3), imshow(rgb), title("rgb");
