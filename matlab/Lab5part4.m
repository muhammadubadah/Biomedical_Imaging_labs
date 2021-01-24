close all;
clc;
clear all;

u = [1 0 1];
v = [2 7];
w = conv(u,v);
m = length(w)-1;
n = 0:1:m;
stem(n,w);
axis([-1 4 -1 8]);
xlabel('M Ubadah')
ylabel("BM-17050")
