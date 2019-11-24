function dSdt = heartwormODE(t,S)
% Define parameters
%Nd = 1875000;
a = 73602;
Nd = 1000000;
Nv = 56000;
b = 0.5 ;
beta_vd = 0.3 ;
delta_d = 0.005 ;
delta_v = 0.1 ; 
gamma = 0.05 ;
beta_dv = 0.3 ;
mu = 0.07 ;
% Define the equations. Each element in the output contains the answer for
% one equation, so there are 7 components. For ex. S(1) is Sh while dSdt(1)
% is dSh/dt, and S(7) is Im while dSdt(7) is dIm/dt.
dSdt = zeros(6,1);
dSdt(1) = a-b*beta_vd*(S(6)/Nv)*S(1);
dSdt(2) = b*beta_vd*(S(6)/Nv)*(S(1)+S(4)) - delta_d*S(2)- gamma*S(2);
dSdt(3) = delta_d*S(2) - gamma*S(3);
dSdt(4) = -b*beta_vd*(S(6)/Nv)*S(4) + gamma*(S(3)+S(2));
dSdt(5) = Nv-b*(S(3)/Nd)*(beta_dv*S(5));
dSdt(6) = b*(S(3)/Nd)*(beta_dv*S(5)) - delta_v*S(6)-mu*S(6);
dSdt(7) = delta_v*S(6)-mu*S(7);