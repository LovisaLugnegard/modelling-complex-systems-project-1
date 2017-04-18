
%Assignment 3.4

dvals = [4,5,10,20,50]; %range
n = 500; %number of sites

b = 10;
T = 1000; %number of time steps
S = 100; %number of simulations
resMat = zeros(length(b),S);
res = zeros(length(dvals),t);
sites = zeros(T+1,n);

for s = 1:length(dvals)
    d = dvals(s);
    A = n;%population
    for i = 1:A %initialize first distribution of individuals
        siteNr = round(rand*(n-1))+1;
        sites(1,siteNr) = sites(1,siteNr) + 1;
    end
    for t = 1:T
        %Check if there are 2 individuals on the site
        for j = 1:n
            if(sites(t,j) == 2)
                sites(t,j) = b;
            else
                sites(t,j) = 0;
            end
        end
        %distribute individuals over all sites
        for i=1:n
            a = sites(t,i);
            for k = 1:a
                siteNr = mod(i + randi([-d-1,d-1]) + n,n) + 1;
                sites(t+1,siteNr) = sites(t+1,siteNr) + 1;
            end            
        end
        res(d,t) = sum(sites(t,:));
    end
end

%generate and save plots
h = figure;
plot(res(1,:))
title('N=1000, b=10, d=4')
xlabel('Time')
ylabel('Number of individuals')


g = figure;
plot(res(2,:))
title('N=1000, b=10, d=5')
xlabel('Time')
ylabel('Number of individuals')

l = figure;
plot(res(3,:))
title('N=1000, b=10, d=10')
xlabel('Time')
ylabel('Number of individuals')

m = figure;
plot(res(4,:))
title('N=1000, b=10, d=20')
xlabel('Time')
ylabel('Number of individuals')

z = figure;
plot(res(5,:))
title('N=1000, b=10, d=50')
xlabel('Time')
ylabel('Number of individuals')

saveas(h, '3_4_d4b10', 'png')
saveas(g, '3_4_d5b10', 'png')
saveas(l, '3_4_d10b10', 'png')
saveas(m, '3_4_d20b10', 'png')
saveas(z, '3_4_d50b10', 'png')