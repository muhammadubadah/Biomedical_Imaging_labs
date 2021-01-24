close all;
clear all;
clc;

A = imread('..\data\mri.jpg');
A = rgb2gray(A);
B = ordfilt2(A,5,ones(3,3));
C = ordfilt2(A,1,ones(3,3));
D = ordfilt2(A,9,ones(3,3));
subplot(2,2,1)
imshow(A)
subplot(2,2,2)
imshow(B)
subplot(2,2,3)
imshow(C)
subplot(2,2,4)
imshow(D)
