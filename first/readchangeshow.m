%读取,显示原始RGB
rgb = imread('D:\Download\Photo\moons.jpg');
subplot(1, 3, 1), imshow(rgb), title("RGB");
%展示转换为HSI的图像
hsi = rgb2hsi(rgb);
subplot(1, 3, 2), imshow(hsi), title("HSI");
%展示重新转换的图像
rgb = hsi2rgb(hsi);
subplot(1, 3, 3), imshow(rgb), title("rgb");
