%unit impulse signal generation - roll no. TC-065
clc;
clear all;
close all;
disp('Unit Impulse Signal generation');
N=input('Enter no. of Samples: ');
n=-N:1:N;
x=[zeros(1,N),1,zeros(1,N)];

stem(n,x);
xlabel('Sample');
ylabel('Amplitude');
title('unit Impulse Signal');