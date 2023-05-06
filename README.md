# DLM
Decentralized Loss Minimization
Code for the Decentralized Model-free Loss Minimization in Distribution Grids with the Use of Inverters

ABSTRACT 
Distribution grids are experiencing a massive penetration of fluctuating distributed energy resources (DERs). As a result, the real-time efficient and secure operation of distribution grids becomes a paramount problem. While installing smart sensors and enhancing communication infrastructure improves grid observability, it is computationally impossible for the distribution system operator (DSO) to optimize setpoints of millions of DER units. This paper proposes communication-free and model-free algorithms that can actively control converter-connected devices, and can operate either as stand-alone or in combination with centralized optimization algorithms. We address the problem of loss minimization in distribution grids, and we analytically prove that our proposed algorithms reduce the total grid losses without any prior information about the network, requiring no communication, and based only on local measurements. Going a step further, we combine our proposed local algorithms with a central optimization of a very limited number of converters. The hybrid approaches we propose have much lower communication and computation requirement than traditional methods, while they also provide performance guarantees in case of communication failure. We demonstrate our algorithms in five networks of varying sizes: a 5-bus network, an IEEE 141-bus system, a real Danish distribution system, a meshed IEEE 30-bus system, and a synthetic 20'022-bus system.

Instructions: 
This code reproduces numerical results of the "Decentralized Loss Minimization in Distribution Grids with the Use of Inverters" paper. Note that the results for the 5-, 30-, 141-, 20022-bus systems can be fully reproduced. While for simulations of the Danish system, 161-bus system data and full 2019 year Syslab data are required, which are under NDA. To run the script, Matlab 2020 and Matpower 7.0, or newer, are needed. The only file to be changed depending on the chosen case is "Script_GENERAL_dPMin.m".

 

To run simulations for the 5-bus system, choose the following settings:

CaseOrig = case5_3PV_1PQ; PV_idx = [2:4]; Wind_idx = [];

No other lines should not be changed. 

 

To run simulations for the 30-bus system, choose the following settings:

CaseOrig = case_ieee30; PV_idx = [2:5]; Wind_idx = 6;

To modify the transformers' ratio, choose:

CaseOrig.branch([11,12,15,36],9) = ..;

 

To run simulations for the 141-bus system, choose the following settings:

CaseOrig = case141;

GM = 1;

NSendGen = 30; % This defines a number of inverters to be set in the system. Available options: 30, 60, 80.

Niter = 1000;

If you want to reproduce results without topology changes, then keep: 

TopCh = 0; 

If you want to simulate the topology reconfigurations, then set 

TopCh = 1; 

and also specify which lines should be switched off and switched on via 

FDB, SDB, FCB, SCB parameters. The explanatory comments are provided within the script. 

 

To run simulations for the 20022-bus system, choose the following settings:

 % structA = load('case20022_pfConv.mat'); 

% CaseOrig = structA.caseA;

GM = 1;

NSendGen = 100; % This defines a number of inverters to be set in the system. Available options: 100, 1000, 10000.

Niter = 10;

 

If you have any questions or problems during executing the script, please do not hesitate to contact me at: ilgmu@elektro.dtu.dk.
