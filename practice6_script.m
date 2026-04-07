%Instituto Tecnológico y de Estudios Superiores de Monterrey
%Name: Carlos Hernán Auquilla Larriva
%Course: Autonomy of Unmanned Aerial Vehicles
%Last update: September 2nd, 2024
clc; clear;close all;

%Practice 6 PID and PV control strategies

%%System parameters
rm = 7.5;
kt = 0.0422;
km = 0.0422;
jm = 1.4e-6;
lm = 1.15e-3;
mh = 0.0106;
rh = 0.0111;
md = 0.053;
rd = 0.0248;
u = -2e-3;  %Qube servo 3, SN: 56856
jh = 0.5 * mh * rh^2;
jd = 0.5 * md * rd^2;
jeq = jm + jh + jd;

%%Desired response
tp_d = 0.15;
MP_d = 2.5/100;
zeta_d = sqrt(( log(MP_d) )^2 / (( log(MP_d) )^2 + pi^2));
wd_d = pi /tp_d;
wn_d = wd_d / sqrt(1-zeta_d^2);
den_d = [1 2*wn_d*zeta_d wn_d^2]; %Ch. equation
sigma_d = zeta_d*wn_d;

%Controller gains
kp=wn_d^2*jeq*rm/kt;
kv=(2*zeta_d*wn_d*jeq*rm/kt)-km-u;

%Obtained data
%Original controller
A_ob=6.165e-3;
B_ob=9.818e-1;
MP_ob=A_ob/B_ob
tp_ob=0.208

%Modified controller for Kp
%Kp = 5.2
A_mod=6.157e-3;
B_mod=9.877e-1;
MP_mod=A_mod/B_mod
tp_mod=0.0758

