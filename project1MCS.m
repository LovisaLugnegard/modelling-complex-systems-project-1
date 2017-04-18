%Project 1

%Assignment 1, plot equilibrium distribution (when t--> inf) for N=15, N=100, p=0.5, 0.7

%X: number of iPhone users
%Y = N - X, number of users with other phones

%p probability to buy an iPhone
%1-p prob to buy other phone

%u(t+1) = f(u(t))
clear;
N = 100; %number of individuals
pi = zeros(1,N+1);
p = 0.5;

sum = zeros(1,N);

for s = 1:1000 %1000 simulations
    population = randi(2,N,1); %vector with all students (1 = iPhpone, 2= android)
    res = simulation_p1(N,p,1000,population);
    disp(res)
    sum(res) = sum(res) + 1;
end


for i=0:N
    pi(i+1)=factorial(N)* p^i*(1-p)^(N-i)/(factorial(i)*factorial(N-i));
end

plot(sum/s)
title('Comparison of simulation and binomial distribution, p = 0.5, N = 100.');
xlabel('Number of iPhone users');
ylabel('Occurences');

hold on
plot(pi, 'g-')

