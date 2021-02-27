% By Kai-Jia Sun and Lie-Wen Chen 2017
% ref. [Phys.Rev. C95 (2017) no.4, 044905]
%% for LHC
% Input parameter.
massu = 0.3; masss=0.5;massc=1.5; rmsp = 0.88;rmsphi = 0.59;
rmso = 0.68; rmsxi = 0.76;rmslam=0.83; gp=1/4; gphi=3/4;go=1/2;
gxi=1/4;glam=1/4; gpenta3 = 1/8; gpenta5 = 3/16;rmspenta =0.84; 
NRc=3/3;NLc=26.95;
massb = 4.7;  Nb = 1*0.1/0.0893;

TM = 3;   % 1--> Ref; 3-->Improved
L=0; SR = 1;dis =0;
if TM==1
    SR=0;
end
w = 0.184; %0.168;
wc = 0.087;
wb = 0.087;
WorRMS = 'w';
IExp = 'LHC';
save input_hadron

param = [0.1540    4.3800  461.8892  195.5666    0.0780];
%param=[T V/(3.14*1000) Nu/nc Ns/nc ws]; nc=3 color
paramcoal=[0.1540   13.7602  461.8892  195.5666   26.9500    1.1198];
%paramcoal=[T V/1000  Nu/nc Ns/nc Nc/nc Nb/nc]
[Yield236Me,Yield458Me] = Koquarkcoal(TM,paramcoal, [w param(5) wc wb SR]);
