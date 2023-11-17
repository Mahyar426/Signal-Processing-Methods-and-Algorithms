function [mu_est] = sliding_mean(x,Nw)
m=length(x);
mu_est=zeros(1,m);
for n=0:m-1
    n1=n-Nw/2;
    n2=n+Nw/2-1;
    if n1<0
        n1=0;
    end 
    if n2>m-1
        n2=m-1;
    end
    xn=x(n1+1:n2+1);
    mu_est(n+1)=mean(xn);
end
end