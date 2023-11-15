%% Initialize
clc
clear all
close all
%% Variables
N=1000;
n=0:N-1;
M=5;
%% Q1
figure;
for i=1:M
    F=randn(1,N);
    subplot(M,1,i);
    plot(n,F)
end
%% Q2
Sigma=1;

%Q2.1
F=randn(1,N);
mu_1=1;
mu_2=10;
mu=linspace(mu_1,mu_2,N);
X=Sigma*F + mu;
figure,plot(n,X)
axis('tight')

%Q2.2
mu=[ones(1,N/2)*mu_1,ones(1,N/2)*mu_2];
F=randn(1,N);
X=Sigma*F + mu;
figure,plot(n,X);
axis('tight');

%Q2.3
mu_1=-10;
mu_2=10;
f=1/N;
mu=mu_1+(mu_2-mu_1)/2*cos(2*pi*f*n);
F=randn(1,N);
X=Sigma*F + mu;
figure,plot(n,X);
axis('tight');
%% Q3
mu=0;
%Q3.1
F=randn(1,N);
Sigma_1=1;
Sigma_2=10;
Sigma=linspace(Sigma_1,Sigma_2,N);
X=Sigma.*F + mu;
figure,plot(n,X)
axis('tight')

%Q3.2
Sigma_1=1;
Sigma_2=5;
Sigma=[ones(1,N/2)*Sigma_1,ones(1,N/2)*Sigma_2];
F=randn(1,N);
X=Sigma.*F + mu;
figure,plot(n,X);
axis('tight');

%Q3.3
Sigma_1=-15;
Sigma_2=15;
f=1/N;
Sigma=Sigma_1+(Sigma_2-Sigma_1)/2*cos(2*pi*f*n-pi/4);
F=randn(1,N);
X=Sigma.*F + mu;
figure,plot(n,X);
axis('tight');