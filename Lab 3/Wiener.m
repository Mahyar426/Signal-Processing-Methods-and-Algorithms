function W = Wiener(N,Ts)
W=zeros(1,N);
standarddeviation=sqrt(Ts);
for n=2:N
    dW=randn(1,1)*standarddeviation;
    W(1,n)=W(1,n-1)+dW;
end
end