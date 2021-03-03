% TC-065
% Fourier synthesis of a triangular wave with tt=2500 and upto 15 harmonics

clc;
close all;
clear all;

tt=2500;
T=500;

out=zeros(1,tt);

% Triangular wave synthesis equation. You can add and delete harmonics in
% this equation.

for t=1:1:tt
    s=cos(2*pi*t/T)+((1/3)^2)*(cos(2*3*pi*t/T))+((1/5)^2)*(cos(2*5*pi*t/T))
    +((1/7)^2)*(cos(2*7*pi*t/T))+((1/9)^2)*(cos(2*9*pi*t/T))+((1/11)^2)*(cos(2*11*pi*t/T))
    +((1/13)^2)*(cos(2*13*pi*t/T))+((1/15)^2)*(cos(2*15*pi*t/T));
    
    out(t)=s;
end

plot(1:tt,out);
xlable('Time')
ylabel('Amplitude')
title('Fourier Synthesis of Triangular Wave')