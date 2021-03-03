%unit step (delayed step) signal generation

clc;
clear all;
close all;

disp('Delayed Unit Step Signal Generation');
N=input('Enter no. of samples: ');
d=input('enter delay value: ');
n=-N:1:N;
x=[zeros(1,N+d),ones(1,N-d+1)];

stem(n,x);
xlabel('Samples');
ylabel('Amplitude');
title('Delayed Unit Step Signal');