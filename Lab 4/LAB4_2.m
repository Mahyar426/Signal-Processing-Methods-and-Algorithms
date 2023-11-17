%% Initializing
clc;
clear all;
close all;
%% Q2
N=1000;
n=0:N-1;
WGN=randn(1,N);
% Q2.1
Nw=100;
mu_est_WGN=sliding_mean(WGN,Nw);
% Q2.2
mu_WGN=zeros(1,N);
figure,plot(n,WGN,'k',n,mu_WGN,'b',n,mu_est_WGN,'r'),axis('tight');
xlabel('n');

%% Q3
Sigma=1;
% Linear
mu1=0;
mu2=10;
muX1=mu1+(mu2-mu1)/N*n;
X1=Sigma*randn(1,N)+muX1;

% Piecewise constant
N0=1000;
muX2=[zeros(1,N0/5) 3*ones(1,N0/5) -5*ones(1,N0/5) ones(1,N0/5) -2*ones(1,N0/5)];
X2=Sigma*randn(1,N)+muX2;

% Cyclic
f0=1/N;
muX3=sin(2*pi*f0*n);
X3=Sigma*randn(1,N)+muX3;

% Q3.1
Nw=100;
muX1_est=sliding_mean(X1,Nw);

Nw=20;
muX2_est=sliding_mean(X2,Nw);

Nw=100;
muX3_est=sliding_mean(X3,Nw);

% Q3.2
figure,plot(n,X1,'k',n,muX1,'b',n,muX1_est,'r'),axis('tight');
xlabel('n');

figure,plot(n,X2,'k',n,muX2,'b',n,muX2_est,'r'),axis('tight');
xlabel('n');

figure,plot(n,X3,'k',n,muX3,'b',n,muX3_est,'r'),axis('tight');
xlabel('n');

% Q3.3
Nw1=10;
Nw2=100;
Nw3=300;
muX2_est1=sliding_mean(X2,Nw1);
muX2_est2=sliding_mean(X2,Nw2);
muX2_est3=sliding_mean(X2,Nw3);

figure,plot(n,X2,'k',n,muX2_est1,'b',n,muX2_est2,'r',n,muX2_est3,'g');
axis('tight');
xlabel('n');