%Simulation 1.3.1, specific b:s

n = 1000; %number of sites
b = 10; %number of offspring
T = 100; %number of time steps
sites = zeros(1,n);
res = zeros(1,T);

A = 100;

for t = 1:T
    A = p1_3_1(n,A,b,sites);
    res(t) = A;
end


h = figure;
plot(res)
title('N=1000, b=10, ')
xlabel('Time')
ylabel('Number of individuals')


saveas(h, '3_1_a100b10', 'png')

