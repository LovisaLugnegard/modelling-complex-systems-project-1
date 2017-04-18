
p = 20; %number of paints
N = 500; %matrix dimension
T = 10000000; %number of time steps
paints = zeros(1,p);
ruleString = zeros(1,2);
n = 400; %start point
m = 100; %start point

dir = 1; %direction, east = 1, south = 2, west = 3, north = 4

matrix = zeros(N);
%set colors and ruleString
for i = 1:p
    paints(i) = i-1;
    %rule string is randomly generated
    ruleString(i) = round(rand());
end

for t = 1:T
    %check color
    k = mod(matrix(n,m),p);
    %update color
    matrix(n,m) = mod(k + 1, p);
    %where to go next
    if(ruleString(k + 1) ==1)
        if(dir == 1)
            if(n==N)
                n=1;
            else
                n = n+1;
            end
            dir = 2;
        elseif(dir == 2)
            if(m == 1)
                m = N;
            else
                m = m-1;
            end
            dir = 3;
        elseif(dir == 3)
            if(n == 1)
                n = N;
            else
                n = n-1;
            end
            dir = 4;
        else
            if(m == N)
                m = 1;
            else
                m = m+1;
            end
            dir = 1;
        end
    else
        if(dir == 1)
            if(n == 1)
                n = N;
            else
                n = n-1;
            end
            dir = 4;
        elseif(dir == 2)
            if(m == N)
                m = 1;
            else
                m = m+1;
            end
            dir = 1;
        elseif(dir == 3)
            if(n==N)
                n=1;
            else
                n = n+1;
            end
            dir = 2;
        else
            if(m == 1)
                m = N;
            else
                m = m-1;
            end
            dir = 3;
        end
    end
    
end

%make and save figure
h = figure;
imagesc(matrix)
title('matrix size 500, numer of colors 20, starting point(400,100), T=10000000')
saveas(h, '2_3a', 'png')
