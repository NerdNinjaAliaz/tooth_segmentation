close all;
clear all
clc
I=dicomread('150(4).dcm');
imshow(I,[])
I=Alpha_trimmed(I,8,3);
figure
imshow(I,[]);
hold on;
e = imellipse;
BW = createMask(e);
% imshow(BW);
jj=activecontour(I,BW,500);
cc=double(jj) .* double(I);
figure
imshow (cc,[])