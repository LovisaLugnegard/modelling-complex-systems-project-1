%Project 1

%Assignment 2.1

initialCond = input('Rule: ');

T = 100; %#of time steps
C = 50; %# cells

ruleVect = zeros(1,8);
CAMat = zeros(T, C);

rule = de2bi(initialCond);

initialVect = zeros(1,C);

for i = 1:C
    initialVect(i) = round(rand);
end

for i = 1:length(rule)
    ruleVect(i) = rule(i);
end

vect = initialVect;
disp("vect");
disp(vect);
resVect = zeros(1, C);
for i = 1:T
    for j = 1:C
        if(j == 1)
            v = vect([C j j+1]);
        elseif(j == C)
            v = vect([j-1 j 1]);
        else
            v = vect([j-1 j j+1]);
        end
        if(isequal(v, [1 1 1]))
            resVect(j) = ruleVect(8);
        elseif(isequal(v, [1 1 0]))
            resVect(j) = ruleVect(7);
        elseif(isequal(v, [1 0 1]))
            resVect(j) = ruleVect(6);
        elseif(isequal(v, [1 0 0]))
            resVect(j) = ruleVect(5);
        elseif(isequal(v, [0 1 1]))
            resVect(j) = ruleVect(4);
        elseif(isequal(v, [0 1 0]))
            resVect(j) = ruleVect(3);
        elseif(isequal(v, [0 0 1]))
            resVect(j) = ruleVect(2);
        else
            resVect(j) = ruleVect(1);
        end
        
    end
    
    CAMat(i,:) = vect;
    vect = resVect;
    
end

imagesc(CAMat)
title('Rule 110, 100 time steps')

disp("result")
disp(CAMat)
