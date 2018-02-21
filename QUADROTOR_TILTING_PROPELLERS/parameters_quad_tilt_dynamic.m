%Quadrotor with tilting propellers parameters

m = 0.650;                  %[kg]
Ix = 7.5e-5;                %[kg*m^2]
Iy = 7.5e-5;                %[kg*m^2]
Iz = 1.3e-5;                %[kg*m^2]
Inertia_Matrix = [Ix, 0,  0;
                  0 , Iy, 0;
                  0 , 0 , Iz];
Inv_Iner = inv(Inertia_Matrix);
g = 9.81;
l = 0.1;
Ir = 6e-5;
kf = 0.3;
km = 0.1;
gravity = [0.0;0.0;-g];
W = ones(4,1);
w_eq = ones(4,1) * 5.35 * 1.0;
Wb = ones(1,3)*2;
Wb0 = [0.0, 0.0, 0.0];
Rb0 = eye(3);
Rd = [  1.0000000,  0.0000000,  0.0000000;
         0.0000000,  0.9950042, -0.0998334;
         0.0000000,  0.0998334,  0.9950042 ];

%Rerefences
%Rd = eye(3);

d2wd = zeros(3,1);

%Gains
%{
Kp = eye(3) * 15;
Kd = eye(3) * 18.75;
K2d = eye(3) * 7.5;
Kr = eye(3) * 10;
Kw = eye(3) * 5;
Kdw = eye(3) * 5;
%}
Kp = eye(3) * 15;
Kd = eye(3) * 25.75;
K2d = eye(3) * 7.5;
%Kr = eye(3) * 0.5;
%Kw = eye(3) * 3;
%Kdw = eye(3) * 5;
Kr = eye(3) * 10;
Kw = eye(3) * 10;
Kdw = eye(3) * 15;

%Initial Actuation
x0 = 1.0;
y0 = 0.0;
z0 = 0.0;

dx0 = 0.0;
dy0 = 0.0;
dz0 = 1.0;

walpha = [0.0,0.0,0.0,0.0];

alpha1_0 = 0.0;
alpha2_0 = pi;
alpha3_0 = 0.0;
alpha4_0 = pi;
