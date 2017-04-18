
function res = simulation_p1(N,p,T, population)

for t = 1:T %T tidssteg (förslagsvis 1000)
    %draw random 'person'
    r = randi([1 N],1,1);
    y = randsample([1,2],1,true,[p, 1-p]);
    
    if(y == 1) %if the person choses iPhone
        population(r) = 1;
    else %if the person choses other phone
        population(r) = 0;
    end
end
%sum the total number
res = sum(population);
end