%HELICOPTER PARAMETERS
h = 0.001;
m = 4.5;
l = 0.001;
g = 9.81;
ke5 = 0.1;
Q = ke5 * sqrt(m*g);
epsilon_m = 0.01;
%J is the inertia matrix
J1 = 10^(-3);
J2 = 10^(-3);
J3 = 10^(-3);
    
%INITIAL CONDITIONS AND POSTURE OF HELICOPTER

w0  = [0.0,0.0,0.0]';
p0  = [0.1,0.2,0.3]';
v0  = [0.0,0.0,0.0]';
Euler0 = [0.0,0.2,0.2]';

%GAINS
%Tau2
K1 = [-0.0024   -0.0191    0.0543    0.0141];
%Tau1
K2 = [0.0024    0.0191    0.0543    0.0141];
%T
K3 = [-0.0236   -1.3500];
%Tau3
K4 = [0.0200    0.3000] *20;
