clear all;
close all;
clc;

%read image
originalRGB = imread('peppers.png');

%display image
subplot(2,2,1);
imshow(originalRGB)
title('Original Image')

subplot(2,2,2);
h = fspecial('motion', 50, 45);
%apply filter on imgae
filteredRGB= imfilter(originalRGB,h);
imshow(filteredRGB)
title('Motion filter with len=40, theta=40')

subplot(2,2,3);
h = fspecial('laplacian', 0.5);
%apply filter on imgae
filteredRGB= imfilter(originalRGB,h);
imshow(filteredRGB)
title('Laplacian filter with Alpha=0.5')

subplot(2,2,4);
h = fspecial('sobel');
%apply filter on imgae
filteredRGB= imfilter(originalRGB,h);
imshow(filteredRGB)
title('Sobel filter')