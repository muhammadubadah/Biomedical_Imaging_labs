clear all;
close all;
clc;

rgb = imread('coloredChips.png');
%subplot(2,1,1)

%imdistline to approximate radii of circle
%d = imdistline;
%convert image to grayscale
%gray_image = rgb2gray(rgb);
%subplot(2,1,2);
%imshow(gray_image);

%Increasing sensitivity to detect the circles
%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.9);
%subplot(1,2,1)
%imshow(rgb)
%title('sensitivity =0.9 for Dark')
%viscircles(centers,radii);

%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.95);
%subplot(1,2,2)
%imshow(rgb)
%title('sensitivity =0.95 for Bright')
%h = viscircles(centers,radii);

%Two-stage method
%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', ...
%          'Sensitivity',0.92,'Method','twostage');
%delete(h)
%imshow(rgb);
%title('Two-stage method at sensitivity =0.92')
%h = viscircles(centers,radii);

%for bright circles
%[centersBright,radiiBright] = imfindcircles(rgb,[20 25], ...
 %   'ObjectPolarity','bright','Sensitivity',0.92);
%subplot(2,1,1)
%imshow(rgb)
%title('Bright circle with sensitivity =0.92')
%viscircles(centersBright, radiiBright,'Color','b');

%[centersBright,radiiBright] = imfindcircles(rgb,[20 25], ...
 %   'ObjectPolarity','bright','Sensitivity',0.94);
%subplot(2,1,2)
%imshow(rgb)
%title('Bright circle with sensitivity =0.94')
%viscircles(centersBright, radiiBright,'Color','b');

%edge thresholding
[centersBright,radiiBright,metricBright] = imfindcircles(rgb,[20 25], ...
    'ObjectPolarity','bright','Sensitivity',0.92,'EdgeThreshold',0.1);
imshow(rgb)
title("Edge Thresholding")
hBright = viscircles(centersBright, radiiBright,'Color','b');