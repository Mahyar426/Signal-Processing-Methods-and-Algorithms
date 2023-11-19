clc;
clear all;
close all;
%% Q2
N=1000;
n=0:N-1;
% Q2.1 Simple Sinusoid
f0=0.15;
x=cos(2*pi*f0*n);
% Q2.1.1
figure,plot(n,x),axis('tight');
xlabel('n'),ylabel('x[n]');
% Q2.1.2
Istep=5;
Nfft=1024;
Nw=round(0.1*Nfft);
h=hamming(Nw);
PlotFlag=1;
Px=Spectrogram(x,Istep,Nfft,h,PlotFlag);
% Q2.2 Four Sinusoids
f1=0.1;
f2=0.2;
f3=0.3;
f4=0.4;
n0=0:249;
x=[cos(2*pi*f1*n0) cos(2*pi*f2*n0) cos(2*pi*f3*n0) cos(2*pi*f4*n0)];
% Q2.2.1
figure,plot(n,x),axis('tight');
xlabel('n'),ylabel('x[n]');
% Q2.2.2
Px=Spectrogram(x,Istep,Nfft,h,PlotFlag);
% Q2.2.3 
Nw1=10;
h=hamming(Nw1);
Px=Spectrogram(x,Istep,Nfft,h,PlotFlag);
Nw2=200;
h=hamming(Nw2);
Px=Spectrogram(x,Istep,Nfft,h,PlotFlag);
% Q2.3 Linear chirp

% Q2.3.1
N=100000;
n=0:N-1;
f1=0.1;
f2=0.3;
f0=f1;
Beta=2*pi*(f2-f1)/N;
x=cos(2*pi*f0*n+Beta*n.^2/2);
figure,plot(n,x),axis('tight');
xlabel('n'),ylabel('x[n]');
% Q2.3.2
Nw=100;
h=hamming(Nw);
Px=Spectrogram(x,Istep,Nfft,h,PlotFlag);
% Q2.4
x=load('TF_Signal.txt','-ascii');
Px=Spectrogram(x.',Istep,Nfft,h,PlotFlag);