
Nd = 500;
Nv = 3000;
b = 0.5 ;
beta_vd = 0.3 ;
delta_d = 0.005 ;
delta_v = 0.1 ; 
gamma = 0.01 ;
beta_dv = 0.3 ;
mu = 0.07 ;

to = 0;
tf = 100;
tspan = [to tf];        
y0 = [500 0 0 0 0 0];  
[t,S] = ode45(@heartwormODE, tspan, y0);
pl0-
title('Human Population Without Control')
xlabel('Time')
ylabel('Susceptible, Exposed, Infected, Recovered')
legend('Susceptible', 'Exposed', 'Infected', 'Recovered')