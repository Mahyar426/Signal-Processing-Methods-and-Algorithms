clc;
clear all;
close all;
%% Q1
%Q1.1
N=1000;
n=0:N-1;
M=5;
Ts=1;
Wt=zeros(M,N);
for i=1:M
    Wt(i,:)=Wiener(N,Ts);
end
t=n*Ts;
figure,plot(t,Wt);
axis('tight');
h1=xlabel('$$ n $$');
set(h1,'Interpreter','Latex');
h2=ylabel('$$ W[n] $$');
set(h2,'Interpreter','Latex');
%Q1.2
M=100000;
N=5;
Ts=10;
Wt=zeros(M,N);
for i=1:M
    Wt(i,:)=Wiener(N,Ts);
end
xstart=-100;
xend=100;
xaxis=linspace(xstart,xend);
fW=hist(Wt,xaxis);
fW=fW/M;
figure,plot(xaxis,fW);
h3=xlabel('$$ X $$');
set(h3,'Interpreter','Latex');
h4=ylabel('$$ f_W(x) $$');
set(h4,'Interpreter','Latex');
%% Q2
N=100;
n=0:N-1;
beta=0.01;
Ts=1;
t=n*Ts;
%Q2.1
M=50;
V=zeros(M,N);
for m=1:M
    V(m,:)=Langevin(N,Ts,beta);
end
STD=sqrt(1/(2*beta)*(1-exp(-2*beta*t)));
figure,plot(t,V,t,STD,'k',t,-STD,'k');
axis('tight');
h5=xlabel('$$ t $$');
set(h5,'Interpreter','Latex');
h6=ylabel('$$ V(t) $$');
set(h6,'Interpreter','Latex');
%Q2.2
N=1000;
n=0:N-1;
t=n*Ts;
Betas=[1,0.1,0.01];
M=length(Betas);
figure;
for m=1:M
    beta=Betas(m);
    V=Langevin(N,beta,Ts);
    subplot(M,1,m),plot(t,V);
    axis('tight');
    h7=title(['beta = ' num2str(beta)]);
    set(h7,'Interpreter','Latex');
    h8=ylabel('$$ V(t) $$');
    set(h8,'Interpreter','Latex');
end
h9=xlabel('$$ t $$');
set(h9,'Interpreter','Latex');
