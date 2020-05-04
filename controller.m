%% ECE414 Final Project
% Spencer Goulette & Zachary Linkletter

KS = 10;
m = 0.0335082;
g = -9.8;
r = 6e-3;
l = .5;
mt = 0.08636;

N = 200;
KT1 = 6e-3;
KT2 = 6.59e-3;
KT3 = 7.33e-3;
KT = KT3;
KE1 = 6e-3;
KE2 = 6.589e-3;
KE3 = 7.33386e-3;
KE = KE3;
Jm1 = 5.8e-8;
Jm2 = 1e-7;
Jm3 = 1.8e-7;
t1 = 8.2e-3;
t2 = 8e-3;
t3 = 4.3e-3;
bm1 = Jm1 / t1;
bm2 = Jm2 / t2;
bm3 = Jm3 / t3;
bg1 = 7.4e-5 * 60 / (2*pi) * 1e-3;
bg2 = 1.7e-4 * 60 / (2*pi) * 1e-3;
bg3 = 2.9e-4 * 60 / (2*pi) * 1e-3;
bg4 = 4.4e-4 * 60 / (2*pi) * 1e-3;
bg5 = 6.7e-4 * 60 / (2*pi) * 1e-3;
Beff = bm3 + bg4;
Rb = 10e-3;
Jb = 2/5*(Rb^2)*m;
Jload = Jb + 1/12*mt*(l^2);
Jeff = Jm3 + Jload / (N^2); 
L1 = 110e-6;
L2 = 75e-6;
L3 = 35e-6;
L = L3;
R1 = 5.1;
R2 = 3.41;
R3 = 1.3;
R = R3;

% Simulink
out = sim('coolcats',...
          'StartTime', '-.1e-6',...
          'StopTime', '10',...
          'MaxStep', '1e-3');
