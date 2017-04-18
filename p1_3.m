function res = p1_3(N,p,T, population)

for t = 1:T %T tidssteg (förslagsvis 1000)
    %draw random 'person'
    r = randi([1 N],1,1);
    y = rand();
    X = population;
    
    if(y <= p) %will choose an iPhone with probability 1/2
        %or another brand with probability 1/2.
        randN = round(rand());
        if(randN == 1) %iPhone
            population = population +1;
        end
    else %they looks at the phone choice of two other
        %individuals. If these two both have the same phone type they adopts
        %that type. Otherwise, they just keeps the phone they had before.
        % disp("population(r):" + population(r))
        if(population(r) == 1) %the phone which breaks is an iPhone
            if(X==0 || X == 1)
                % population = population;
                % population(r) = 0;
            else
                rand1 = randi([1,N]); %randsample([1,2],1,true,[(X-1)/(N-1), 1-(X-1)/(N-1)]);
                rand2 = randi([1,N-1]);%randsample([1,2],1,true,[(X-2)/(N-2), 1-(X-2)/(N-2)]);
                if(rand1>X && rand2 >X+1)
                    population(r) = 0;
                else
                    population = population + 1;
                end
            end
        else %the phone which breaks is of another brand
            if(X == 0 || X == 1) %only one iPhone
            else
                rand1 = randi([1,N]); %randsample([1,2],1,true,[(X)/(N-1), 1-(X)/(N-1)]);
                rand2 = randi([1,N-1]); %randsample([1,2],1,true,[(X-1)/(N-2), 1-(X-1)/(N-2)]);
                if(rand1 <=X && rand2 <=X-1)
                    population = population + 1;
                end
            end
        end
    end
end
res = population;
end

