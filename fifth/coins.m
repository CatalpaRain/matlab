clc;
clear;
I = imread('coins.png');
[I2, T] = edge(I, 'canny', 0.1);
I3 = imfill(I2, 'holes');
figure(1);
subplot(221); imshow(I); title('原图');
subplot(222); imshow(I2); title('edge函数检测边缘');
subplot(223); imshow(I3); title('imfill结果');
BW = imbinarize(I);
[B, L, N, A] = bwboundaries(BW, 'nohole');
subplot(224); imshow(I); title('bwboundaries追踪外边界');
hold on;

for k = 1:length(B),
    boundary = B{k};

    if (k > N)
        plot(boundary(:, 2), boundary(:, 1), 'g', 'LineWidth', 2);
    else
        plot(boundary(:, 2), boundary(:, 1), 'r', 'LineWidth', 2);
    end

end

hold off
