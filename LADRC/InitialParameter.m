clear all;
close all;
clc;


% L1=3*wo;
% L2=3*wo^2;
% L3=wo^2;
Ke=50;
Rs=13.5;
Ms=0.5;
bs=0.008;
a=(1/Ms)*(bs+((Ke^2)/Rs));
Ref=0.001;
nh=4;
Rh=0.0019;
Pw=0.0024;
WallPos=0.1;
wall_force = 1e12;
M=0.1;
beta = 50;
A1=3.1416e-04;
A2=2.6389e-04;
Pa=101352;
Ar=0.00005026;
g1=9;%7
g2=4;
g3=18;
g4=0.32;

wc=95;         % 104          
ep=0.0024;         %0.003
b=1;         %1

L=0.15;
Vinact=1e-04;

k1=wc^4;
k2=4*wc^3;
k3=6*wc^2;
k4=4*wc;

sim('LADRC_24aV3')