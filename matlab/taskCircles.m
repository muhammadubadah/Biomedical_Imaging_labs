clear all;
close all;
clc;

circles = imread('..\data\circles.jpg');
subplot(2,2,1);
imshow(circles);
title('Original Image');
%check radius of circle, r =35pixels
d= imdistline;
delete(d);

[centers, radii] = imfindcircles(circles, [30 40], "ObjectPolarity", "bright", "Sensitivity", 0.92);
subplot(2,2,2);
imshow(circles);
viscircles(centers,radii, "Color","b");
title('sensitivity =0.92');

[centers, radii] = imfindcircles(circles, [30 40], "ObjectPolarity", "bright", "Sensitivity", 0.95);
subplot(2,2,3);
imshow(circles);
viscircles(centers,radii, "Color","b");
title('sensitivity =0.95');

[centers, radii] = imfindcircles(circles, [30 40], "ObjectPolarity", "bright", "Sensitivity", 0.97,'EdgeThreshold',0.1);
subplot(2,2,4);
imshow(circles);
viscircles(centers,radii, "Color","b");
title('sensitivity =0.96, EdgeThreshold,0.1');