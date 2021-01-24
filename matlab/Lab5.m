clear all;
clc;
close all;
a = input('Enter a: ');
b = input('Enter b: ');
t = a:0.1:b;
f = 50;
y = sin(2*pi*f*t);
figure;
plot(t,y)
xlabel("MUHAMMAD UBADAH");
ylabel("BM-17050");
[X,Y] = meshgrid(t,1:20);
Z = sin(2*pi*f*X);
figure
xlabel("MUHAMMAD UBADAH");
ylabel("BM-17050");
surf(Z)
