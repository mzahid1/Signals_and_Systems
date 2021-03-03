% Plotting of a Square Wave

clc;
clear all;
close all;

x=0:0.0001:20;
y=square(x);
plot(x,y);
axis([1 20 -2 2]);
xlabel('Time')
label('Amplitude')
title('plotting of a Square Wave')