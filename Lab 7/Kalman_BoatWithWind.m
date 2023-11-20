% Discrete-time Kalman filter

function [xenp,Pnp] = Kalman_BoatWithWind(zn,xen_1p,Pn_1p,H,R,PHI,Q,bn_1)

% Identity matrix
N=length(xen_1p);
I=eye(N);

% State Estimate Extrapolation
xen_=PHI*xen_1p+bn_1;

% Covariance Extrapolation
Pn_=PHI*Pn_1p*PHI'+Q;

% Kalman Gain Matrix
Kn=Pn_*H'*inv(H*Pn_*H'+R);

% State Estimate Update
xenp=(I-Kn*H)*xen_+Kn*zn;

% Error Covariance Update
Pnp=(I-Kn*H)*Pn_*(I-Kn*H).'+Kn*R*Kn.';