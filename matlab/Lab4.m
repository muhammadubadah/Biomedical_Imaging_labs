clc;
clear all;
close all;

subplot(2,2,1)
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)
xlabel("M Ubadah")
ylabel("BM-17050")
grid on

subplot(2,2,2)
t = 0:pi/50:5*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)
xlabel("M Ubadah")
ylabel("BM-17050")
grid on


subplot(2,2,3)
t = 0:pi/50:100;
length(t)
st = sin(t);
ct = cos(t);
plot3(st,ct,t)
xlabel("M Ubadah")
ylabel("BM-17050")
grid on