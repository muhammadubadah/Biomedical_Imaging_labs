clear all;

pout = imread('pout.tif');
subplot(2,2,1);
imshow(pout);
title('Original Image')

pout_imadjust = imadjust(pout);
subplot(2,2,2);
imshow(pout_imadjust);
title('Imadjust')

pout_histeq = histeq(pout);
subplot(2,2,3);
imshow(pout_histeq);
title('Histeq')

pout_adapthisteq = adapthisteq(pout);
subplot(2,2,4);
imshow(pout_adapthisteq);
title('Adapthisteq')