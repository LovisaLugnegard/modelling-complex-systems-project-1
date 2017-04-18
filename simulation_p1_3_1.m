%Simulation 1.3.1

n = 1000; %number of sites
b = 1:5:50; %number of offsprings

T = 100; %number of time steps
S = 10000; %number of simulations
resMat = zeros(length(b),S);
sites = zeros(1,n);
for j = 1:length(b) %go through all b
    
    for s = 1:S
        A = n;%population
        for t = 1:T
            A = p1_3_1(n,A,b(j),sites);
        end
        resMat(j,s) = A;
        
    end
    
end

resMatrix = round(resMat/100);
largestEl = max(resMatrix(:));
range = 0:largestEl;
bifurMat = zeros(largestEl+1,length(b)+1);
disp(resMatrix)
disp(largestEl)
disp(length(b))
for i=1:length(b)
    for j=1:S
        el = resMatrix(i,j);
        bifurMat(el+1,i) = bifurMat(el+1,i) + 1;
    end
end

imagesc(b, range, bifurMat)
xlabel('b')
ylabel('100*A')
title('Bifurcation diagram, 10000 simulations, 100 time steps')
colorbar
