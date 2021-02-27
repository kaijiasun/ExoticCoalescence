function  varargout = SHquarkcoal(varargin)
%% [Yield236, Yield458, YieldFit] = Koquarkcoal(TM,paramcoal, [w param(5) wc wb SR])
%% control parameter
SR = 0;dis =0; WorRMS = 'w';
control.SR = SR;
control.dis=dis;
control.WorRMS=WorRMS;

%% quark mass
qmass.u=0.3; qmass.s=0.5; qmass.c=1.5; qmass.b=4.7; %% u  s c b
%% parameters
%Iparam = 'Ko';
if nargin==1
    Iparam = varargin{1};
    
    if strcmp(Iparam, 'Ko')
        TM = 1;
        T = 0.175;  % GeV
        V = 1.0; % 10^3 fm^3  V_C
        Nu = 245/3;
        Ns = 150/3;
        Nc = 3/3;
        Nb = 0.02/3;
    else if  strcmp(Iparam,'Me')
            control.SR = 1;
            TM = 3;
            T = 0.175;  % GeV
            V = 1.2; % 10^3 fm^3  V_C
            Nu = 245/3;
            Ns = 150/3;
            Nc = 3/3;
            Nb = 0.02/3;
        end
    end
    
    wq = 0.55;
    param = [ T V Nu Ns Nc Nb];
    ws = 0.519;
    wc = 0.385;
    wb = 0.338;
else
    param = varargin{2};
    w = varargin{3};
    wq = w(1);
    ws = w(2); wc = w(3);wb = w(4);
    TM = varargin{1};
    control.SR = w(5);
end

%% particle library
p = Koparlib;
%%
% prime production

disp('Prime Production:')
particle=p.Kaonp; particle.quancoal = [0 ws] ; % L and w
NKaon = SHfunstat(control,param,particle,qmass);
disp(['The number of  Kaon plus' ' is ' num2str(NKaon(TM))])
YieldPrime.KaonPlus = NKaon(TM);


p.Ks0892.quancoal = [0 ws] ; % L and w
N = SHfunstat(control,param,p.Ks0892,qmass);
disp(['The number of  K-star-0-892' ' is ' num2str(N(TM))])

p.Ksp892.quancoal = [0 ws] ; % L and w
N = SHfunstat(control,param,p.Ksp892,qmass);
disp(['The number of  K-star-plus-892' ' is ' num2str(N(TM))])




particle=p.D0; particle.quancoal = [0 wc] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.D = N(TM)*2;

particle=p.B05279; particle.quancoal = [0 wb] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.B = N(TM)*2;


particle=p.pro; particle.quancoal = [0 wq] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.N = N(TM)*2;

% Npro =  funstat(param,p.pro);
% Ndelpp =  funstat(param,p.delpp1232);
% Ndelp =  funstat(param,p.delp1232);
% Ndel0 =  funstat(param,p.del01232);
% Npro = Npro + Ndelpp + Ndelp*1/2 + Ndel0*1/2;
% disp(['The number of  proton'  ' is ' num2str(Npro)])
% YieldFit.N = Npro*2;

particle=p.xim; particle.quancoal = [0 ws] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.xi = N(TM)*2;

particle=p.omega; particle.quancoal = [0 ws] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.Omega = N(TM);

particle=p.xic2470; particle.quancoal = [0 wc] ; % L and w
N = SHfunstat(control,param,particle,qmass);
YieldFit.xic = N(TM)*2;


%% normal hadrons
particle=p.omega782; particle.quancoal = [0 wq] ; % L and w
Nomega782 = SHfunstat(control,param,particle,qmass);
disp(['The number of  omega-782' ' is ' num2str(Nomega782(TM))])
YieldFit.omega782 = Nomega782(TM);

particle=p.rho0770; particle.quancoal = [0 wq] ; % L and w
Nrho770 = SHfunstat(control,param,particle,qmass)*3;
disp(['The number of  rho0-770' ' is ' num2str(Nrho770(TM))])
YieldFit.rho770 = Nrho770(TM);

p.Ks0892.quancoal = [0 ws] ; % L and w
p.Ksp892.quancoal = [0 ws] ; % L and w
NKs = SHfunstat(control,param,p.Ks0892,qmass)+Kofunstat(control,param,p.Ksp892,qmass);
disp(['The number of  K-star-892' ' is ' num2str(NKs(TM))])

particle=p.Lam; particle.quancoal = [0 ws] ; % L and w
Nlam = SHfunstat(control,param,particle,qmass);
Nsig1385 = 6*Nlam;
Nsig1192 = 3*Nlam*1/3;
Nlam = Nlam +Nsig1192 +(0.87+0.11/3)*Nsig1385;
p.xim.quancoal = [0 ws];p.xi0.quancoal = [0 ws]; p.xim1530.quancoal = [0 ws]; p.xi01530.quancoal = [0 ws]; p.omega.quancoal = [0 ws];
Nlam = Nlam +  Kofunstat(control,param,p.xim,qmass)+Kofunstat(control,param,p.xi0,qmass) + Kofunstat(control,param,p.xim1530,qmass)...
    +Kofunstat(control,param,p.xi01530,qmass) + Kofunstat(control,param,p.omega,qmass);

YieldFit.Lambda = Nlam(TM);

disp(['The number of  Lambda-1115'  ' is ' num2str(Nlam(TM))])

p.Lam1520.quancoal = [1 ws] ; % L and w
NLam1520 = SHfunstat(control,param,p.Lam1520,qmass);
disp(['The number of  Lambda-1520' ' is ' num2str(NLam1520(TM))])
YieldFit.Lambda1520 = NLam1520(TM);

p.LamC.quancoal = [0 wc] ; % L and w
p.SigC02455.quancoal = [0 wc] ; % L and w
p.SigC02520.quancoal = [0 wc] ; % L and w   becareful!
p.LamC2625.quancoal = [1 wc] ; % L and w
NLamC = SHfunstat(control,param,p.LamC,qmass)+Kofunstat(control,param,p.SigC02455,qmass)*3+Kofunstat(control,param,p.SigC02520,qmass)*3+0.67*Kofunstat(control,param,p.LamC2625,qmass);
disp(['The number of  LamC-2286' ' is ' num2str(NLamC(TM))])
YieldFit.LambdaC = NLamC(TM);

p.LamB.quancoal = [0 wb] ; % L and w
p.LamB5810.quancoal = [0 wb] ; % L and w
p.LamB5830.quancoal = [0 wb] ; % L and w
NLamB = SHfunstat(control,param,p.LamB,qmass)+Kofunstat(control,param,p.LamB5810,qmass)*3+Kofunstat(control,param,p.LamB5830,qmass)*6;  % Ó¦¸ÃÊÇSigma-B µÄË¥±ä
disp(['The number of  LamB-5620' ' is ' num2str(NLamB(TM))])
YieldFit.LambdaB = NLamB(TM);
YieldFit
%% Meson
disp('Mesons:')

p.f0980.quancoal = [1 ws] ; % L and w
N= SHfunstat(control,param,p.f0980,qmass);
disp(['The number of '  p.f0980.ID ' is ' num2str(N(TM))])
Yield236(1) = N(TM);

p.f0980.quancoal = [0 ws] ; % L and w
p.f0980.quark = p.f0980.quark1;
N= SHfunstat(control,param,p.f0980,qmass);
disp(['The number of '  p.f0980.ID ' is ' num2str(N(TM))])
Yield458(1) = N(TM);

p.f0980.quancoal = [1 ws] ; % L and w
p.f0980.quark = p.f0980.quark2;
N= SHfunstat(control,param,p.f0980,qmass);
disp(['The number of '  p.f0980.ID ' is ' num2str(N(TM))])

p.a0980.quancoal = [1 wq] ; % L and w
N= SHfunstat(control,param,p.a0980,qmass)*3;   % isospin
disp(['The number of '  p.a0980.ID ' is ' num2str(N(TM))])
Yield236(2) = N(TM);

p.a0980.quancoal = [0 wq] ; % L and w
p.a0980.quark = p.a0980.quark1;
N= SHfunstat(control,param,p.a0980,qmass)*3;   % isospin
disp(['The number of '  p.a0980.ID ' is ' num2str(N(TM))])
Yield458(2) = N(TM);

p.K01460.quancoal = [0 ws] ; % L and w
N= SHfunstat(control,param,p.K01460,qmass)*2; %isospin
disp(['The number of '  p.K01460.ID ' is ' num2str(N(TM))])
Yield236(3) = NaN;
Yield458(3) = N(TM);

p.Ds2317.quancoal = [1 wc] ; % L and w
N= SHfunstat(control,param,p.Ds2317,qmass);
disp(['The number of '  p.Ds2317.ID ' is ' num2str(N(TM))])
Yield236(4) = N(TM);

p.Ds2317.quancoal = [0 wc] ; % L and w
p.Ds2317.quark = p.Ds2317.quark1;
N= SHfunstat(control,param,p.Ds2317,qmass);
disp(['The number of '  p.Ds2317.ID ' is ' num2str(N(TM))])
Yield458(4) = N(TM);

p.Tcc3797.quancoal = [0 wc] ; % L and w
N= SHfunstat(control,param,p.Tcc3797,qmass);
disp(['The number of '  p.Tcc3797.ID ' is ' num2str(N(TM))])
Yield236(5) = NaN;
Yield458(5) = N(TM);

p.X3872.quancoal = [2 wc] ; % L and w
N= SHfunstat(control,param,p.X3872,qmass);
disp(['The number of '  p.X3872.ID ' is ' num2str(N(TM))])
Yield236(6) = N(TM);

p.X3872.quancoal = [0 wc] ; % L and w
p.X3872.quark = p.X3872.quark1;
N= SHfunstat(control,param,p.X3872,qmass);
disp(['The number of '  p.X3872.ID ' is ' num2str(N(TM))])
Yield458(6) = N(TM);

p.Zp4430.quancoal = [1 wc] ; % L and w
N= SHfunstat(control,param,p.Zp4430,qmass)*3; % isospin
disp(['The number of '  p.Zp4430.ID ' is ' num2str(N(TM))])
Yield236(7) = NaN;Yield458(7) = N(TM);

p.Tcb07123.quancoal = [0 wb] ; % L and w
N= SHfunstat(control,param,p.Tcb07123,qmass);
disp(['The number of '  p.Tcb07123.ID ' is ' num2str(N(TM))])
Yield236(8) = NaN;Yield458(8) = N(TM);
%% Baryons
disp('Baryons:')

p.Lam1405.quancoal = [1 ws] ; % L and w
N= SHfunstat(control,param,p.Lam1405,qmass);
disp(['The number of '  p.Lam1405.ID ' is ' num2str(N(TM))])
Yield236(9) = N(TM);

p.Lam1405.quancoal = [0 ws] ; % L and w
p.Lam1405.quark = p.Lam1405.quark1;
N= SHfunstat(control,param,p.Lam1405,qmass);
disp(['The number of '  p.Lam1405.ID ' is ' num2str(N(TM))])
Yield458(9) = N(TM);

Yield236(10:16) = NaN;

p.Thep1530.quancoal = [1 ws] ; % L and w
N= SHfunstat(control,param,p.Thep1530,qmass);
disp(['The number of '  p.Thep1530.ID ' is ' num2str(N(TM))])
Yield458(10) = N(TM);

p.KKN1920.quancoal = [1 ws] ; % L and w
N= SHfunstat(control,param,p.KKN1920,qmass)*2; % isospin
disp(['The number of '  p.KKN1920.ID ' is ' num2str(N(TM))])
Yield458(11) = N(TM);

p.DN2790.quancoal = [0 wc] ; % L and w
N= SHfunstat(control,param,p.DN2790,qmass);
disp(['The number of '  p.DN2790.ID ' is ' num2str(N(TM))])
Yield458(12) = N(TM);

p.DsN2919.quancoal = [2 wc] ; % L and w
N= SHfunstat(control,param,p.DsN2919,qmass);
disp(['The number of '  p.DsN2919.ID ' is ' num2str(N(TM))])
Yield458(13) = N(TM);

p.Thecs2980.quancoal = [1 wc] ; % L and w
N= SHfunstat(control,param,p.Thecs2980,qmass)*2;   % isospin
disp(['The number of '  p.Thecs2980.ID ' is ' num2str(N(TM))])
Yield458(14) = N(TM);

p.BN6200.quancoal = [0 wb] ; % L and w
N= SHfunstat(control,param,p.BN6200,qmass);
disp(['The number of '  p.BN6200.ID ' is ' num2str(N(TM))])
Yield458(15) = N(TM);

p.BsN6226.quancoal = [2 wb] ; % L and w
N= SHfunstat(control,param,p.BsN6226,qmass);
disp(['The number of '  p.BsN6226.ID ' is ' num2str(N(TM))])
Yield458(16) = N(TM);


%% Dibaryons
disp('Dibaryons:')

p.H2245.quancoal = [0 ws] ; % L and w
N= SHfunstat(control,param,p.H2245,qmass);
disp(['The number of '  p.H2245.ID ' is ' num2str(N(TM))])
Yield236(17) = N(TM);Yield458(17) = NaN;

p.KNN2352.quancoal = [1 ws] ; % L and w
N= SHfunstat(control,param,p.KNN2352,qmass);
disp(['The number of '  p.KNN2352.ID ' is ' num2str(N(TM))])
Yield236(18) = N(TM);

p.KNN2352.quancoal = [0 ws] ; % L and w
p.KNN2352.quark = p.KNN2352.quark1;
N= SHfunstat(control,param,p.KNN2352,qmass);
disp(['The number of '  p.KNN2352.ID ' is ' num2str(N(TM))])
Yield458(18) = N(TM);

p.OO3228.quancoal = [0 ws] ; % L and w
N= SHfunstat(control,param,p.OO3228,qmass);
disp(['The number of '  p.OO3228.ID ' is ' num2str(N(TM))])
Yield236(19) = N(TM);Yield458(19) = NaN;

p.Hcpp3377.quancoal = [0 wc] ; % L and w
N= SHfunstat(control,param,p.Hcpp3377,qmass);
disp(['The number of '  p.Hcpp3377.ID ' is ' num2str(N(TM))])
Yield236(20) = N(TM);Yield458(20) = NaN;

p.DNN3734.quancoal = [0 wc] ; % L and w
N= SHfunstat(control,param,p.DNN3734,qmass);
disp(['The number of '  p.DNN3734.ID ' is ' num2str(N(TM))])
Yield236(21) = NaN;Yield458(21) = N(TM);

p.BNN7147.quancoal = [0 wb] ; % L and w
N= SHfunstat(control,param,p.BNN7147,qmass);
disp(['The number of '  p.BNN7147.ID ' is ' num2str(N(TM))])
Yield236(22) = NaN;Yield458(22) = N(TM);


p.pO2552.quancoal = [0 ws] ; % L and w
N= SHfunstat(control,param,p.pO2552,qmass);
disp(['The number of '  p.pO2552.ID ' is ' num2str(N(TM))])
Yield236(23) = N(TM);Yield458(23) = NaN;

if nargout >1
    varargout{1}=Yield236;
    varargout{2}=Yield458;
end
if nargout > 2
    varargout{3} = YieldFit;
end

