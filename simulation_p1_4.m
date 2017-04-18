%Project 1
%Assignment 1.4, plot
%a bifurcation diagram showing how the distribution of the number of
%iPhone owners depends on q.


%X: number of iPhone users
%Y = N - X, number of users with other phones

%p probability randomly chose iPhone/Android
%1-p prob to ask two other individuals and if these two both have the same phone type he adopts
%that type. Otherwise, he just keeps the phone he had before.

%u(t+1) = f(u(t))
clear;
close all;
N = 1000; %# of individuals
T = 1000; %# of time steps
S = 10000; %#of simulations
q = 0 : 0.01 : 1;
total = zeros(1,S);
range = 0:N;

bifurMat = zeros(N + 1, length(q));

for j = 1:length(q)
    for i = 1:S
        X = round(rand*N); %antal iPhones
        res = p1_3_v2(N,q(j),T,X); %run the simulation
        bifurMat(res+1,j)= bifurMat(res+1,j) + 1; %put the number of iPhone users at the right place
    end
end

imagesc(q, range, bifurMat)
xlabel('p')
ylabel('u')
title('1000 time steps, 10000 simulations, N = 1000')
colorbar

