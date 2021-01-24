clear all;
close all;
clc;

a = imread('rice.png');
subplot(1,2,1);
imshow(a),
title('Original Image');
B = imsharpen(a, 'Radius',2,'Amount',2);
subplot(1,2,2);
imshow(B);
title('Sharpened Image');