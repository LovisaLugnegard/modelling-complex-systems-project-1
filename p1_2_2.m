%Project 1

%Assignment 2.2

N = 100; %Matrix dimension
T = 11000; %# of time steps
mat = zeros(N,N); %0 = white, 1 = black

%initial conditions
n = 50; 
m = 50;
dir = 1; 

%east = 1, south = 2, west = 3, north = 4

for i = 1:T
    
    if(mat(n,m) == 0)
        mat(n,m) = 1;
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
        mat(n,m) = 0;
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

imagesc(mat)
title('11000 runs, 100x100 matrix, start at (50,50) pointing east')

