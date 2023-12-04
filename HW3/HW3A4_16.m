clc
close all 
clear

figure;
grid on; 

A = [1,0,0,0,0,0,0,0;
    1,0.3,0.3^2,0.3^3,0.3^4,0.3^5,0.3^6,0.3^7;
    1,0.6,0.6^2,0.6^3,0.6^4,0.6^5,0.6^6,0.6^7;
    1,1,1,1,1,1,1,1;
    0,1,0,0,0,0,0,0;
    0,1,0.6,3*(0.3)^2,4*(0.3)^3,5*(0.3)^4,6*(0.3)^5,7*(0.3)^6;
    0,1,2*(0.6),3*(0.6)^2,4*(0.6)^3,5*(0.6)^4,6*(0.6)^5,7*(0.6)^6;
    0,1,2,3,4,5,6,7;
    ];
b = [-2,2,-1,1,0,0,0,0]';
theta =  A\b;

t = linspace(-100, 100, 1000); 
y = theta(1)+theta(2)*t+theta(3)*t.^2+theta(4)*t.^3+theta(5)*t.^4 +theta(6)...
    *t.^5 + theta(7)*t.^6 + theta(8)*t.^7;
for i = 1:length(theta)
    fprintf('x%d: %f\n', i, theta(i));
end

plot(t,y);