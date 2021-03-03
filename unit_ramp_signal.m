%unit ramp signal generation - roll no. TC-065
clc;
clear all;
close all;

disp('Unit Ramp Signal Generation');
N=input('Enter no. of Samples: ');
a=input('Max Amplitude: ');
n=-N:1:N;
x=a*n/N;

stem(n,x);
xlabel('Sample');
ylabel('Amplitude');
title('Unit Ramp Signal');