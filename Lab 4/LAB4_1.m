%% Initializing
clc;
clear all;
close all;
%% Q1
N=1000;
n=0:N-1;
WGN=randn(1,N);
% Q1.1
WGN_mean=mean(WGN);
% Q1.2
WGN_variance=var(WGN);
% Q1.3
Rb=xcorr(WGN,'biased');
Rub=xcorr(WGN,'unbiased');
lmax=N-1;
l=-lmax:lmax;
% Q1.4
figure,plot(l,Rub,'k',l,Rb,'r'),axis('tight');
xlabel('l');
legend('Unbiased','Biased');

%% Q2
N=1000000;
beta=0.01;
Ts=10;
Ntr=10/(beta*Ts);
N0=Ntr+N;
V=Langevin(N0,beta,Ts);
V=V(Ntr+1:N0);

%Q2.1
V_mean=mean(V);

% Q2.2
V_variance=var(V);

% Q2.3
lmax=100;
l=-lmax:lmax;
Rth=1/(2*beta)*exp(-beta*abs(Ts*l));
Rub=xcorr(V,lmax,'unbiased');
Rb=xcorr(V,lmax,'biased');
figure,plot(l,Rth,'k',l,Rub,'bx',l,Rb,'ro'),axis('tight');
xlabel('l'),legend('Theoretical','Unbiased','Biased');