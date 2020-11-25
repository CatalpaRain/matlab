function hsi = rgb2hsi(rgb)
    
    % ��ȡͼ�����
    rgb = im2double(rgb);
    r = rgb(:, :, 1);
    g = rgb(:, :, 2);
    b = rgb(:, :, 3);
    
    % ִ��ת������
    % ʵ��H����
    num = 0.5*((r - g) + (r - b));
    den = sqrt((r - g).^2 + (r - b).*(g - b));
    % ��ֹ����Ϊ0
    theta = acos(num./(den + eps)); 
    
    H = theta;
    H(b > g) = 2*pi - H(b > g);
    H = H/(2*pi);
    % ʵ��S���� 
    num = min(min(r, g), b);
    den = r + g + b;
    % ��ֹ����Ϊ0
    den(den == 0) = eps; 
    S = 1 - 3.* num./den;
    
    H(S == 0) = 0;
    
    %ʵ��I����
    I = (r + g + b)/3;
    
    % ��3���������ϳ�Ϊһ��HSIͼ��
    hsi = cat(3, H, S, I);
    %hsi = H;    %�ֱ𷵻�3������
    %hsi = S;
    %hsi = I;
end
