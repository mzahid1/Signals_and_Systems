% TC-065
% Fourier synthesis of Square Wave with tt=2500 and additional harmonics
clc; clear all; close all;
tt=2500; %Total Simulation run
T=500; %Time period of the sine component

out=zeros(1,tt);
%Square wave synthesis equation. you can add and delete harmonics in this
%equation.

for t=1:1:tt
    s= sin(2*pi*t/T)+(1/3)*(sin(2*3*pi*t/T))
    (1/5)*(sin(2*5*pi*t/T))+
    (1/7)*(sin(2*7*pi*t/T))+
    (1/9)*(sin(2*9*pi*t/T))+
    (1/11)*(sin(2*11*pi*t/T))+
    (1/13)*(sin(2*13*pi*t/T))+
    (1/15)*(sin(2*15*pi*t/T);
    out(t)=s;
end

plot (1:tt,out);
xlabel('time')
ylabel('Amplitude')
title('Fourier synthesis of Square Wave')