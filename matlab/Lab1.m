clear all;
clc;

a = [1 2 3; 4 6 4; 3 4 5]
b = a+2

subplot(3,1,1)
plot(a,b)
grid off

subplot(3,1,2)
bar(b)
xlabel("Ubadah")
ylabel("Pounds")

subplot(3,1,3)
plot(b, "-+")
axis([0 10 0 10])