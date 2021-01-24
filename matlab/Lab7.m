clear all;
close all;
clc;

I = imread('../data/UKcoins.jpg')
subplot(2,2,1);
imshow(I);
title('Original Image');

H1 = fspecial('motion', 30,30);
MotionBlur = imfilter(I,H1,'replicate');
subplot(2,2,2);
imshow(MotionBlur);
title('Motion Blurred Image');

H2 = fspecial('disk', 7);
blurred = imfilter(I, H2,'replicate');
subplot(2,2,3);
imshow(blurred);
title('Blurred Image')

B = imsharpen(I, 'Radius',6,'Amount',5);
subplot(2,2,4);
imshow(B)
