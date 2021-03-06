t=imread('D:\Download\Photo\OIP.jfif');
[m,n,z]=size(t);
t1=imnoise(t,'gaussian',0,0.02);
subplot(2,3,1),imshow(t1),title('加入高斯噪声后')
t2=t;
for i=1:m-2
for j=1:n-2
t2(i+1,j+1,:)=round(t2(i,j,:)/9+t2(i,j+1,:)/9+t2(i,j+2,:)/9+t2(i+1,j,:)/9+t2(i+1,j+1,:)/9+t2(i+1,j+2,:)/9+t2(i+2,j,:)/9+t2(i+2,j+1,:)/9+t2(i+2,j+2,:)/9);
end
end
subplot(2,3,2),imshow(t2),title('3*3均值滤波');
t3=t;
for i=1:m-4
for j=1:n-4
t3(i+2,j+2,:)=round(t3(i,j,:)/25+t3(i,j+1,:)/25+t3(i,j+2,:)/25+t3(i,j+3,:)/25+t3(i,j+4,:)/25+t3(i+1,j,:)/25+t3(i+1,j+1,:)/25+t3(i+1,j+2,:)/25+t3(i+1,j+3,:)/25+t3(i+1,j+4,:)/25+t3(i+2,j,:)/25+t3(i+2,j+1,:)/25+...
t3(i+2,j+2,:)/25+t3(i+2,j+3,:)/25+t3(i+2,j+4,:)/25+t3(i+3,j,:)/25+t3(i+3,j+1,:)/25+t3(i+3,j+2,:)/25+t3(i+3,j+3,:)/25+t3(i+3,j+4,:)/25+...
t3(i+4,j,:)/25+t3(i+4,j+1,:)/25+t3(i+4,j+2,:)/25+t3(i+4,j+3,:)/25+t3(i+4,j+4,:)/25);
end
end
subplot(2,3,3),imshow(t3),title('5*5均值滤波');
t1=imnoise(t,'salt & pepper',0.3);
subplot(2,3,4),imshow(t1),title('加入椒盐噪声后')
t2=t;
for i=1:m-2
for j=1:n-2
t2(i+1,j+1,:)=round(t2(i,j,:)/9+t2(i,j+1,:)/9+t2(i,j+2,:)/9+t2(i+1,j,:)/9+t2(i+1,j+1,:)/9+t2(i+1,j+2,:)/9+t2(i+2,j,:)/9+t2(i+2,j+1,:)/9+t2(i+2,j+2,:)/9);
end
end
subplot(2,3,5),imshow(t2),title('3*3均值滤波');
t3=t;
for i=1:m-4
for j=1:n-4
t3(i+2,j+2,:)=round(t3(i,j,:)/25+t3(i,j+1,:)/25+t3(i,j+2,:)/25+t3(i,j+3,:)/25+t3(i,j+4,:)/25+t3(i+1,j,:)/25+t3(i+1,j+1,:)/25+t3(i+1,j+2,:)/25+t3(i+1,j+3,:)/25+t3(i+1,j+4,:)/25+t3(i+2,j,:)/25+t3(i+2,j+1,:)/25+...
t3(i+2,j+2,:)/25+t3(i+2,j+3,:)/25+t3(i+2,j+4,:)/25+t3(i+3,j,:)/25+t3(i+3,j+1,:)/25+t3(i+3,j+2,:)/25+t3(i+3,j+3,:)/25+t3(i+3,j+4,:)/25+...
t3(i+4,j,:)/25+t3(i+4,j+1,:)/25+t3(i+4,j+2,:)/25+t3(i+4,j+3,:)/25+t3(i+4,j+4,:)/25);
end
end
subplot(2,3,6),imshow(t3),title('5*5均值滤波');