%% Initialize
clc
clear all
close all
%% Variables
N=1000;
n=0:N-1;
mu_1=-10;
mu_2=10;
f=1/N;
mu1=mu_1+(mu_2-mu_1)/2*sin(2*pi*f*n);
F=randn(1,N);
%% Trick

%%
X1=Sigma.*F + mu1;
%X2=Sigma*F + mu2;
figure,plot(n,X1);
%figure,plot(n,X2);
axis('tight');