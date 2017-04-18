function res = p1_3_v2(N,p,T,X)

for t = 1:T %T tidssteg (förslagsvis 1000)
    y = rand(); %random number to decide if asking other student or not
    phone = round(rand*N); %iphone or android
    
    if(y <= p) %will choose an iPhone with probability 1/2
        %or another brand with probability 1/2.
        randN = round(rand());
        if(randN == 1 && phone>X && X<N) %iPhone
            X = X + 1;
        elseif(randN == 0 && phone<=X && X>0)
            X = X - 1;
        end
    else %he looks at the phone choice of two other
        %individuals. If these two both have the same phone type he adopts
        %that type. Otherwise, he just keeps the phone he had before.
        
        if(phone<= X) %iphone
            if(X==0)
                X;
            elseif(X<=N-1)
                rand1 = randi([1,N]);
                if(rand1>X) %android
                    rand2 = randi([1,N-1]);
                    if(rand2>X)
                        X = X- 1;
                    end
                end
            end
        else %other brand
            if(X==N)
                X;
            elseif(X>1)
                rand1 = randi([1,N]);
                if(rand1<=X) %iPhone
                    rand2 = randi([1,N-1]);
                    if(rand2<=X-1)
                        X = X+1;
                    end
                end
            end
            
        end
    end
    res = X;
end

