close all;
clear all;
clc;

t = (-1:0.01:1)';
impulse = t == 0;
unitstep = t >= 0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;

subplot(2,2,1)
plot(t,impulse)
axis([-1 1 -1 1])

subplot(2,2,2)
plot(t,unitstep)
axis([-1 1 -1 1])

subplot(2,2,3)
plot(t,ramp)
axis([-1 1 -1 1])

subplot(2,2,4)
plot(t,quad)
axis([-1 1 -1 1])