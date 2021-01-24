clear all;
close all;
clc;

I = imread('..\data\mri.jpg');
subplot(3,2,1);
imshow(I)
title('MRI of a mother kissing her baby')

%convert RGB image to grayscale
I_gray = rgb2gray(I);
subplot(3,2,2)
imshow(I_gray)
title('MRI in grayscale')

I_imadjust = imadjust(I_gray);
subplot(3,2,3);
imshow(I_imadjust);
title("Imadjust");

I_histeq = histeq(I_gray);
subplot(3,2,4);
imshow(I_histeq);
title("Histeq");

I_adapthisteq = histeq(I_gray);
subplot(3,2,5);
imshow(I_adapthisteq);
title("Adapthisteq");