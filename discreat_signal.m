%discrete time sinusoidal signal generation - roll no. TC-065
clc;
clear all;
close all;
disp('Sinusoidal Signal generation');
N=input('Enter no. of samples: ');
n=0:0.1:N;
x=sin(n);
figure, stem(n,x);
xlabel('Samples');
ylabel('Amplitude');
title('Sinusoidal Signal');