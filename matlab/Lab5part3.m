close all;
clear all;
clc;

t = (-1:0.01:1)';
impulse = t == 0;
unitstep = t >= 0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
plot(t,impulse,t,unitstep,t,ramp,t,quad)
axis([-1 1 -0.5 1.4])
xlabel("M Ubadah")
ylabel("BM-17050")