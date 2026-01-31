clear all;
close all;
clc;
% paramters from Mohorcic thesis
M=0.1; %kg
% M_tilda = 0.1; %kg
% K_tilda = 6.25E5;%6.25E3; %N/m 6.25E3
% B_tilda=sqrt(4*(M/M_tilda)*K_tilda); %N/(m/s)
Beta = 50; %Garmsiri

Patm = 101352; %14.7 PSI in Pascals
Psum = 758423; %110 PSI in Pascals
Ff = 0;
d1 = .020; %m (Zhu Barth)
dp = .008; %m (" ")
Ar = (dp/2)^2*pi; %ok
Ap=Ar;
A1 = (d1/2)^2*pi; %ok
A2 = A1-Ar; %ok
Tvr = .002; %ok
Tpwm = .02; %ok
k = 1.4; %ok
R = 287; %J*kg^-1*K^-1
T= 294; %K

dmin = (Tvr/Tpwm);
C1 = sqrt((k/R)*(2/(k+1))^((k+1)/(k-1)));
C2 = sqrt((2*k)/(R*(k-1)));
Pcr = (2/(k+1))^(k/(k-1));
Cf = .25; %nondimensional discharge coefficient (Richer)

L=.150; %m
Vinact = 1E-4;
Xinact = 1E-4;
WallForce = 1E12;
WallPose = 0.1;
%%%%%%%%%%%spool dynmaics%%%%%%%%
Ms=0.5;%0.0311;
beta_s=8*10^-3;%8*10^-3 or 7.5;
ke=50;%2.78;
Rs=13.5;%200;
ks=7.5;% removing the srping constant from the system
Kfc=ke;
b=0.0025;
gamma1=R*T*k;
nh=4;
Rh=0.0019;
Pw=0.0025;



%%%%%%%%% outer loop nonlinear ADRC controller %%%%%%%%%
% g1=10;
% g2=9;
% g3=5;
% g4=1;
g1=10;
g2=9;
g3=5;
g4=3;
g5=3;
g6=1;
% ep=0.0002;
% wc=20.5;
% bhat1=815.2596*0.0001;
ep=0.02;     %0.02
wc=20.5;  %20.5
bhat1=815.2596*0.01; %*0.01;
k1=wc^5;
k2=5*(wc^4);
k3=10*(wc^3);
k4=10*(wc^2);
k5=5*(wc);

%%%%%%%%%%%% outer loop error based ADRC controller %%%%%%%%%%%%%
% woe=850;
% wce=90.5;
% le1=4*woe;
% le2=6*woe^2;
% le3=4*woe^3;
% le4=woe^4;
% kpe=wce^3;
% kde1=3*wce^2;
% kde2=3*wce;
% be=815.2596*.006;
sim('pneumatic04212025');
%sim('pneumatic_adrc_ebadrc_06142021');
fprintf('complete');






