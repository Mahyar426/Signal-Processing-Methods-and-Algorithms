clc;
clear all;
close all;
% Exercise 1: Simulating the motion of a boat
N=100;
Ts=1;
% Simulation of the boat
X0=zeros(4,1);
PHI=[1 0.6321 0 0;
     0 0.3679 0 0;
     0 0 1 0.6321;
     0 0 0 0.3679];
bn_1=[0.3679
      0.6321
      0.3679
      0.6321];
Q=[0.0168 0.0200 0 0;
   0.0200 0.0432 0 0;
   0 0 0.0168 0.0200;
   0 0 0.0200 0.0432];
X=zeros(4,N);
X(:,1)=X0;
for n=2:N
    mu=zeros(4,1);
    eta=mvnrnd(mu,Q).';
    X(:,n)=PHI*X(:,n-1)+bn_1+eta;
    
end
% Simulation of the noisy measurements
H=[1 0 0 0;
    0 0 1 0];
r=10;
R=r*eye(2,2);
v=sqrt(r)*randn(2,N);
z=H*X+v;
% First figure: state vector and measurements
figure,plot(X(1,:),X(3,:),'b',z(1,:),z(2,:),'k.');
axis('tight');
xlabel('x'),ylabel('y');
legend('x[n]','z[n]','Location','best');