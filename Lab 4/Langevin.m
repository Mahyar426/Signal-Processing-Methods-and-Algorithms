% Langevin equation

function [V] = Langevin(N,b,Ts)

V=zeros(1,N);
for n=2:N
    
    DeltaV=sqrt(1/(2*b)*(1-exp(-2*b*Ts)))*randn(1,1);
    V(n)=V(n-1)*exp(-b*Ts)+DeltaV;
    
end