function mpc = case5_3PV_1PQ
%CASE9    Power flow data for 9 bus, 3 generator case.
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from Joe H. Chow's book, p. 70.

%   MATPOWER
%   $Id: case9.m 2408 2014-10-22 20:41:33Z ray $

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0     0 0	0	1	1	0	10	1	1.1	0.9;
	2	2	10    7 0	0	1	1	0	10	1	1.1	0.9;
	3	2	6     4 0	0	1	1	0	10	1	1.1	0.9;
	4	2	5     3 0	0	1	1	0	10	1	1.1	0.9;
    5	1	2     1 0	0	1	1	0	10	1	1.1	0.9;
    ];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
    1	0   0	100	-100	1.1	100	1	100	-100   0	0	0	0	0	0	0	0	0	0	0;
    2	15  0	15	-15     1.1	100	1	15	  0    0	0	0	0	0	0	0	0	0	0	0;
    3	10  0	10	-10     1.1	100	1	10	  0    0	0	0	0	0	0	0	0	0	0	0;
    4	4   0	4	-4      1.1	100	1	4     0    0	0	0	0	0	0	0	0	0	0	0;
];
%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.1828	0.2111	0	0	0	0	0	0	1	-360	360;
	2	3	0.1202	0.1603	0	0	0	0	0	0	1	-360	360;
    2	5	0.1872	0.6188	0	0	0	0	0	0	1	-360	360;
	3	4	0.1282	0.1763	0	0	0	0	0	0	1	-360	360;
];

% display(strcat('branch:',num2str(mpc.branch(:,6:8))));

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0

mpc.gencost = [
	2	0	0	3	0	2000000	0;
    2	0	0	3	0	2000000	0;
    2	0	0	3	0	2000000	0;
    2	0	0	3	0	2000000	0;
];
