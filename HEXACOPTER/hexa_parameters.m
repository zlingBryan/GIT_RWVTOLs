%Parameters Hexacopter
l = 1.0;
k = 2.98 * 10^(-6);
b = 1.14 * 10^(-7);
d = 0.225;
g = 9.81;
m = 0.468;
Ixx = 8.80 * 10^(-3);
Iyy = Ixx;
Izz = 8.80 * 10^(-3);
Im = Izz / 3.0;
Ir = 3.36 * 10^(-5);
omega = 0.33;


%Gains

Kd_euler = [0.1, 0.1, 0.1];
Kp_euler = [0.5, 0.5, 0.5];
Kp = [2.75, 2.75, 2.75];
Kd = [5.0, 5.0, 10.0];
Kdd = [1.0, 1.0, 5.0];

Kphi_p = 0.01;
Ktheta_p = 0.01;
Kpsi_p = 0.01;
Kphi_d = 0.01;
Ktheta_d = 0.01;
Kpsi_d = 0.01;

Kz = 0.1;
Kzd = 1;




%References
Phi_d = 0.0;
Theta_d = 0.0;
Psi_d = 0.0;
dPhi_d = 0.0;
dTheta_d = 0.0;
dPsi_d = 0.0;

%Initial Condition
x_0 = 0.0;
y_0 = 0.0;
z_0 = 1.0;
dx_0 = 0.0;
dy_0 = 0.0;
dz_0 = 0.0;
phi_0 = 0.5;
theta_0 = 0.5;
psi_0 = 0.5;
q_0 = eulerToquater(phi_0,theta_0,psi_0);
q_0 = normalizer_quater(q_0);
p0 = 0.0;
q0 = 0.0;
r0 = 0.0;




