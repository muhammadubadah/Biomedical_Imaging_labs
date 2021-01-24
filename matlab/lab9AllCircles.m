clear all;
close all;
clc;

rgb = imread('coloredChips.png');
[centersbright, radiibright] = imfindcircles(rgb, [20 25], "ObjectPolarity", "bright", "Sensitivity", 0.95,'EdgeThreshold',0.1);
imshow(rgb);
h = viscircles(centersbright,radiibright, "Color","b");

[centersdark, radiidark] = imfindcircles(rgb, [21 25], "ObjectPolarity", "dark", "Sensitivity", 0.95);
h = viscircles(centersdark,radiidark);
title("All circles detected")