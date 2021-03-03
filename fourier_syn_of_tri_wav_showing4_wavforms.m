% TC-065
% Fourier synthesis of a triangular wave showing only 4 wave forms.

clc;
close all;
clear all;

tt=5000;
T=1250;

out=zeros(1,tt);

% Triangular wave synthesis equation. You can add and delete harmonics in
% this equation.

for t=1:1:tt
    s=cos(2*pi*t/T)+((1/3)^2)*(cos(2*3*pi*t/T))+((1/5)^2)*(cos(2*5*pi*t/T))
    +((1/7)^2)*(cos(2*7*pi*t/T))+((1/9)^2)*(cos(2*9*pi*t/T));
    out(t)=s;
end

plot(1:tt,out);
xlable('Time')
ylabel('Amplitude')
title('Fourier Synthesis of Triangular Wave')