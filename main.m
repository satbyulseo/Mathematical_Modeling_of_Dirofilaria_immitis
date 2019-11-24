function main
to = 0;
tf = 100;
tspan = [to tf];        
y0 = [73602 0  0  0 56000 560 0];   
[t,S] = ode45(@heartwormODE, tspan, y0);
plot(t,S(:,1));hold on;plot(t,S(:,2));hold on;plot(t,S(:,3));hold on;plot(t,S(:,4));
%plot(t,S(:,3));hold on;plot(t,S(:,3))
title('Dog Population')
xlabel('Time(days)')
legend('Susceptible dogs', 'Exposed dogs', 'Infected dogs','Treated dogs')
%legend('Susceptible dogs', 'Exposed dogs', 'Infected dogs')
%ylabel('Susceptible', 'Exposed', 'Infected', 'Recovered')


%% plot incubation rates

plot(beta1(:,3));hold on;plot(beta3(:,3));hold on;plot(beta5(:,3));hold on;plot(beta7(:,3))
%plot(t,B(:,3));hold on;plot(t,S(:,3))
title('Dog Population')
xlabel('Time(days)')
ylabel('Infected Dogs')
legend('transmission rate=0.1', 'transmission rate=0.3', 'transmission rate=0.5','transmission rate=0.7')
