
close all
clear all
clc

alpha = 10;
beta = 0.4;
delta = 0.1;
gamma = 0.4;

M = 10;
A = 0.01;
G = 10; 
B = 1;

params = [M; A; G; B];

y0 = [10; 1];

tspan = [0 50];


[t, y] = ode45(@(t,y)myODE(t,y,params), tspan, y0);





plot(t,y(:,2));
xlabel('Predators, h')
ylabel('Prey, p');
title('Prey verus Predator (Yi-Cheng, Liu)')
hold on 




function dy = myODE(t,y,params)

    M = params(1);
    A = params(2);
    G = params(3);
    B = params(4);
    
    X = y(1);
    Y = y(2);
    
    dy = zeros(2,1);
    
    dy(1) = -M * X + A * X * Y;
    dy(2) = -G * X * Y + B * Y;
end

