clc;
clear all;
close all;
N=1;
Sigma=1;
A=[0.1 0.5 1 2 4];
pFA=0.01:0.08:0.97;
pFA_length=length(pFA);
A_length=length(A);
PD=zeros(A_length,pFA_length);
for i=1:A_length
    Gamma=(sqrt((Sigma^2)/N))*Qinv(pFA);
    PD=Q((Gamma-A(i))/sqrt(Sigma^2/N));
    pD(i,:)=PD;
end
figure,plot(pFA,pD,'Marker','o'),axis([0 1 0 1]);
h1=xlabel('$$P_{FA}$$');
h2=ylabel('$$P_D$$');
set(h1,'Interpreter','Latex','FontSize',13);
set(h2,'Interpreter','Latex','FontSize',13);
h3=legend('$$A=.1$$','$$A=.5$$','$$A=1$$','$$A=2$$','$$A=4$$','Location','Best');
set(h3,'Interpreter','Latex','FontSize',9);
