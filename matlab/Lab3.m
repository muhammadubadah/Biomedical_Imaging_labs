clc;
clear all;
close all;

x = -2.9:0.2:2.9;
subplot(3,2,1)
bar(x,exp(-x.*x));
xlabel("M Ubadah")
ylabel("BM-17050")

subplot(3,2,2)
bar(x,exp(x))
xlabel("M Ubadah")
ylabel("BM-17050")

subplot(3,2,3)
bar(x,exp(-x))
xlabel("M Ubadah")
ylabel("BM-17050")

subplot(3,2,4)
bar(x,exp(x)-exp(-x))
xlabel("M Ubadah")
ylabel("BM-17050")

subplot(3,2,5)
bar(x,exp(x)+exp(-x))
xlabel("M Ubadah")
ylabel("BM-17050")