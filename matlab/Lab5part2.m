clc;
close all;
clear all;

t = linspace(0,3*pi)';
x = square(t);
plot(t/pi,x,".-",t/pi,sin(t));
xlabel("t / \pi")
grid on
xlabel("M Ubadah")
ylabel("BM-17050")