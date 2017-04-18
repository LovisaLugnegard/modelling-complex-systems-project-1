%Project 1

%Assignment 1.3, Implement this as a simulation model for N = 15 individuals. In-
%vestigate the role of q in phone choice dynamics. In particular, for
%values of q ranging between 0 and 1. Find values of q where you get
%switching backwards and forwards between nearly all individuals own-
%ing an iPhone to only small numbers owning one. For this value plot a
%histogram of the distribution of iPhone owners.

%X: number of iPhone users
%Y = N - X, number of users with other phones

%p probability randomly chose iPhone/Android
%1-p prob to ask two other individuals and if these two both have the same phone type he adopts
%that type. Otherwise, he just keeps the phone he had before.

%u(t+1) = f(u(t))

N = 1000; %# of individuals
T = 1000; %# of time steps
S = 10000; %#of simulations
sum = zeros(1,N+1);
p = 0.5;
total = zeros(1,S);

for i = 1:S
    X = round(rand*N); %X =number of students with iPhone
    res = p1_3_v2(N,p,T,X);
    sum(res +1) = sum(res +1) + 1;
    total(i) = res;
end

histogram(total)
title("Histogram, number of iPhone users, q = 0.50, N=1000")
xlabel("Number of iPhone users")
ylabel("Occurence")


