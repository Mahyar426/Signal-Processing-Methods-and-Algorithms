clc;
clear all;
close all;
%% Q1
Clk=load('AtomicClock.txt');
N=length(Clk);
n=0:N-1;
% Q1.1
Nw=round(0.001*N);
Istep=round(0.05*Nw);
Iplot=1:Istep:N;
mu_est=sliding_mean(Clk,Nw,Istep);
% Q1.2
figure,plot(n,Clk,'k',n(Iplot),mu_est,'b'),axis('tight');
xlabel('n');
h=legend('X[n]',...
    ['$$\hat{\mu}_X[n]$$ obtained with $$N_w=' int2str(Nw) '$$'],...
    'Location','NorthEast');
set(h,'Interpreter','Latex');
% Q1.3
sigma_est=sliding_std(Clk,Nw,Istep);
% Q1.4
figure,plot(Iplot,sigma_est),axis('tight');
xlabel('n'),ylabel('$$\hat{\sigma}[n]$$','Interpreter','Latex');
% Q1.5
s1=mu_est+2*sigma_est;
s2=mu_est-2*sigma_est;
figure,plot(n,Clk,'k',n(Iplot),mu_est,'r',n(Iplot),s1,'b',n(Iplot),s2,'b');
axis('tight');
xlabel('n');
h=legend('X[n]',...
    ['$$\hat{\mu}_X[n]$$ obtained with $$N_w=' int2str(Nw) '$$'],...
    '$$s_1[n]=\hat{\mu}_X[n]+2\hat{\sigma}_X[n]$$',...
    '$$s_2[n]=\hat{\mu}_X[n]-2\hat{\sigma}_X[n]$$',...
    'Location','NorthEast');
set(h,'Interpreter','Latex');
%% Q2
% Q2.1
x=load('SpectralEstimation.txt','-ascii');
N=length(x);
n=0:N-1;
figure,plot(n,x),axis('tight');
xlabel('n'),ylabel('$$X[n]$$','Interpreter','Latex');
% Q2.2
X=fft(x);
Px=1/N*abs(X(1:N/2+1)).^2;
f=(0:N/2)/N; 
figure,plot(f,Px),axis('tight');
xlabel('f'),ylabel('$$\hat{P} (f)$$','Interpreter','Latex');
% Q2.3
Nwelch=1000;
h=ones(1,Nwelch);
Noverlap=Nwelch/2;
Nfft=Nwelch;
Fs=1;
[Px,f]=pwelch(x,h,Noverlap,Nfft,Fs);
figure,plot(f,Px),axis('tight');
xlabel('f'),ylabel('$$\hat{P} (f)$$','Interpreter','Latex');