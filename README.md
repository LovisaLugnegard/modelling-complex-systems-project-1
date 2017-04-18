# modelling-complex-systems-project-1
1 Fashion and Fads
We will look at two dierent models of phone usage and investigate a few
models for how iPhone ownership changes over time. Consider a group of
students X of whom own iPhones and Y = N 􀀀 X others who own another
brand.
1. (2 points) First consider the case where people make decisions inde-
pendently of each other. On each time step of the model we choose
one student at random and his phone breaks down, irrespective of if he
currently has an iPhone or another brand. The probability the student
buys an iPhone is then p and the probability he buys another brand is
1 􀀀 p, again irrespective of his earlier phone type. Write a simulation
of this model and plot the equilibrium distribution of the number of
iPhone owners for N = 15 and N = 100 and for p = 0:5 and p = 0:7.
2. (3 points). Write down a master equation for the model for how
the probability (i; t) that i students have iPhones at time t changes
through time, i.e., how (i; t + 1) changes with (i; t), (i + 1; t) and
(i 􀀀 1; t). Solve the master equation for t ! 1 to show that
(i) =
 
N
i
!
pi(1 􀀀 p)N􀀀i
Compare this distribution to that you nd by simulating the model by
plotting the two on the same gure.
3. (3 points) Now consider the following model of how the students
change phone ownership. On each time step we choose on individ-
ual whose phone breaks down. This individual does one of the two
following things:
 With probability q he will choose an iPhone with probability 1/2
or another brand with probability 1/2.
 With probability 1 􀀀 q he looks at the phone choice of two other
individuals. If these two both have the same phone type he adopts
that type. Otherwise, he just keeps the phone he had before.
Implement this as a simulation model for N = 15 individuals. In-
vestigate the role of q in phone choice dynamics. In particular, for
2
values of q ranging between 0 and 1. Find values of q where you get
switching backwards and forwards between nearly all individuals own-
ing an iPhone to only small numbers owning one. For this value plot a
histogram of the distribution of iPhone owners.
4. (3 points) Run the simulation for a large number of time steps for
q in the range between 0 and 1 (reasonable small interval), and plot
a bifurcation diagram showing how the distribution of the number of
iPhone owners depends on q. Repeat the same questions, but now
for N = 1000. Discuss the similarities and dierences between the
diagrams for N = 15 and N = 1000.
5. (3 points) Write down a mean-eld interpretation of the model. Let
xt denote the average proportion of individuals with an iPhone and
write an equation for how the expected value of xt changes through
time. Find the three steady states for this equation and draw a bifur-
cation diagram for how q aects the steady states of iPhone ownership.
Compare this bifurcation diagram to the last bifurcation diagram for
simulations of N = 1000 individuals. (Hint: In deriving the mean-eld
equation you can assume that the probability of choosing the same
individual twice is negligible.)
3
2 Cellular Automata
1. (3 points) Implement your own one-dimensional elementary cellular
automata simulator. The input should be a number between 0 and
255, indicating the dierent rules. The output should be the change in
cells through time in a two dimensional array. Simulate and provide
examples of each of the four complexity classes discussed in the lectures.
For rule 110, choose a long enough initial string, get the output for a
specic time step (a one-dimensional string), calculate the box-counting
dimension for this output string.
2. (2 points) In this exercise you implement a two-dimensional cellular
automata model. Consider a \painter" who behaves as follows. It
starts living in a world of only white squares. Then on each time step,
 If it is on a white square, it paints the square black, turns 90
degrees right, and move forward one square.
 If it is on a black square, it paints the square white, turn 90 degrees
left, and moves forward one square.
Simulate this painter for 11; 000 steps. What type of pattern emerges?
3. (5 points) Now create a painter who has n coloured paints, labeled
0; 1; : : : ; n 􀀀 1. When the painter arrives at a square of colour k it
changes it to colour k + 1 (assuming modular n so that n is always
the same as 0). It then turns by following a \rule-string" dened by
n symbols which are each 0 or 1. If the kth symbol is 1 it turns
right, and if it is 0 it turns left. It moves one square on and repeats.
Under the above denition the black and white painter of the previous
question was dened as rule-string 10. Implement this model, and nd
10 pictures painted by this painter which you think are pretty.
4
3 Population Dynamics
In this project we implement a stochastic model of population dynamics.
Imagine an environment consisting of n resource sites and a population of At
individuals. We assign individuals to sites uniformly at random, so each site
has an equal probability of being chosen. We then apply the following rules:
 If exactly two individuals land on the same site they produce b ospring.
These new individuals pass to the next generation.
 If three or more individuals occupy the same site then they all die and
produce no ospring.
 Empty sites or sites containing just one individual also produce no
ospring (i.e., the individual dies without reproducing).
The new population At+1 consists of all the surviving ospring. And then we
repeat the same procedure as above, i.e., assigning individuals and getting
ospring.
1. (3 points) Implement the above model and show how the population
changes through time for b = 5, b = 10, b = 20, b = 30 and b = 40,
with n = 1000 and an initial population A0 = n. What happens for
the same parameter values when you set A0 to be small? By running
the simulation for dierent values of b within a range between 1 to 50
(reasonable interval) and N = 1000, draw a bifurcation diagram for
your model.
2. (3 points) Derive a mean-eld equation for your model. Show that
the steady state x = 0 is always stable. Find conditions in terms of b
for the existence of two further non-zero steady states.
3. (3 points) Calculate (numerically) and plot the Lyapunov exponent
for your mean-eld equation as a function of b. Identify the value
of b at which the populations become chaotic. Explain why in your
simulations from question 1 the populations become extinct for large
b?
4. (3 points) Extend the stochastic model so that individuals move only
locally between sites. Assume that the sites are arranged on a one-
dimensional ring of n sites. On each time step all ospring at site i
5
move to a site chosen uniformly at random in the range [i􀀀d; i+d]. The
reproduction rule, that only sites occupied by two individuals produce
b ospring is the same as before. Investigate the dynamics of this model
for various values of d and b for N = 500. What role does d play in the
population dynamics? Determine (numerically) for which values of d
and b the population becomes extinct and for which values it stabilises.
6
