function [V] = Langevin(N,Ts,beta)
V=zeros(1,N);
for n=2:N
    dV=sqrt(1/(2*beta)*(1-exp(-2*beta*Ts)))*randn(1,1);
    V(n)=V(n-1)*exp(-beta*Ts)+dV;
end