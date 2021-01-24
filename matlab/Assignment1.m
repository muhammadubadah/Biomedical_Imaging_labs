close all;
clc;
clear all;

u = [4 0 5];
v = [2 1 0 1 1 0];
w = conv(u,v)
m = length(w)-1;    
n = 0:1:m;
stem(n,w)
axis([-1 8 -1 12])
xlabel("Ubadah")
ylabel("BM-17050")