clc;
clear;
I = imread('coins.png');
[I2, T] = edge(I, 'canny', 0.1);
I3 = imfill(I2, 'holes');
figure(1);
subplot(221); imshow(I); title('ԭͼ');
subplot(222); imshow(I2); title('edge��������Ե');
subplot(223); imshow(I3); title('imfill���');
BW = imbinarize(I);
[B, L, N, A] = bwboundaries(BW, 'nohole');
subplot(224); imshow(I); title('bwboundaries׷����߽�');
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
