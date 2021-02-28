function p=SHparlib
%% particle library
p.Kaonp.ID = 'Kaon';
p.Kaonp.quan = [0.493677  0 0 1 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Kaonp.quark = [ 1 1 0 0 ]; % u(d) s  c b 

p.rho0770.ID = 'rho0-770';
p.rho0770.quan = [0.7753  1 0 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.rho0770.quark = [ 2 0 0 0 ]; % u(d) s  c b 

p.rhop770.ID = 'rho-plus-770';
p.rhop770.quan = [0.7751  1 0 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.rhop770.quark = [ 2 0 0 0 ]; % u(d) s  c b 

p.omega782.ID = 'omega-782';
p.omega782.quan = [0.78265  1 0 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.omega782.quark = [ 2 0 0 0 ]; % u(d) s  c b 

p.D0.ID = 'D0 meson';
p.D0.quan = [1.86484  0 0 0 1 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.D0.quark = [1 0 1 0];

p.Dp.ID = 'Dplus meson';
p.Dp.quan = [1.86961  0 0 0 1 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Dp.quark = [1 0 1 0];

p.Lam.ID = 'Lambda0-1115';
p.Lam.quan = [1.115  1/2 1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Lam.quark = [ 2 1 0 0 ]; % u(d) s  c b 

p.Lam1520.ID = 'Lambda-1520';
p.Lam1520.quan = [1.520  3/2 1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Lam1520.quark = [ 2 1 0 0 ]; % u(d) s  c b 

p.LamC.ID = 'Lambda-C-2286';
p.LamC.quan = [2.28646  1/2 1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.LamC.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.LamC2625.ID = 'Lambda-C-2625';
p.LamC2625.quan = [2.625  3/2 1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.LamC2625.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.LamB.ID = 'Lambda-B-5620';
p.LamB.quan = [5.6194  1/2 1 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb
p.LamB.quark = [ 2 0 0 1 ]; % u(d) s  c b 

p.LamB5810.ID = 'Lambda-B-5810';
p.LamB5810.quan = [5.810  1/2 1 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb ; spin not clear
p.LamB5810.quark = [ 2 0 0 1 ]; % u(d) s  c b 

p.LamB5830.ID = 'Lambda-B-5830';
p.LamB5830.quan = [5.830  1/2 1 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb£» spin not clear
p.LamB5830.quark = [ 2 0 0 1 ]; % u(d) s  c b 


p.Sig01192.ID = 'Sigma0-1192';
p.Sig01192.quan = [1.19264  1/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.Sigp1192.ID = 'Sigma-plus-1192';
p.Sigp1192.quan = [1.18937  1/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.Sigm1192.ID = 'Sigma-plus-1192';
p.Sigm1192.quan = [1.19745  1/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.Sig01385.ID = 'Sigma0-1385';
p.Sig01385.quan = [1.3837  3/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.Sigp1385.ID = 'Sigma-plus-1385';
p.Sigp1385.quan = [1.3828  3/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.Sigm1385.ID = 'Sigma-minus-1385';
p.Sigm1385.quan = [1.3872  3/2  1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.SigC02455.ID = 'SigmaC0-2455';
p.SigC02455.quan = [2.45374  1/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigC02455.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.SigCp2455.ID = 'SigmaC-plus-2455';
p.SigCp2455.quan = [2.4529  1/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigCp2455.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.SigCpp2455.ID = 'SigmaC-plus-plus-2455';
p.SigCpp2455.quan = [2.45398  1/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigCpp2455.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.SigC02520.ID = 'SigmaC0-2520';
p.SigC02520.quan = [2.5188  3/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigC02520.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.SigCp2520.ID = 'SigmaC-plus-2520';
p.SigCp2520.quan = [2.5175  3/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigCp2520.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.SigCpp2520.ID = 'SigmaC-plus-plus-2520';
p.SigCpp2520.quan = [2.5179  3/2  1 0 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.SigCpp2520.quark = [ 2 0 1 0 ]; % u(d) s  c b 

p.pro.ID = 'proton-938.3';
p.pro.quan = [0.9383  1/2 1 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.pro.quark = [ 3 0 0 0 ]; % u(d) s  c b 

p.delpp1232.ID = 'delta-plusplus-1232';
p.delpp1232.quan = [1.232  3/2 1 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.delp1232.ID = 'delta-plus-1232';
p.delp1232.quan = [1.232  3/2 1 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.del01232.ID = 'delta-0-1232';
p.del01232.quan = [1.232  3/2 1 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.phi.ID = 'phi-1.0195';
p.phi.quan = [1.0195  1 0 0 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb

p.xim.ID = 'xi-minus-1.3217';
p.xim.quan = [1.3217  1/2 1 -2 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.xim.quark = [ 1 2 0 0 ]; % u(d) s  c b 

p.xi0.ID = 'xi0-1.31486';
p.xi0.quan = [1.31486  1/2 1 -2 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.xi0.quark = [ 1 2 0 0 ]; % u(d) s  c b 

p.xim1530.ID = 'xi-minus-1.535';
p.xim1530.quan = [1.535  3/2 1 -2 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.xim1530.quark = [ 1 2 0 0 ]; % u(d) s  c b 

p.xi01530.ID = 'xi0-1.5318';
p.xi01530.quan = [1.5318  3/2 1 -2 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.xi01530.quark = [ 1 2 0 0 ]; % u(d) s  c b 

p.xic2470.ID = 'xi-c0-2.470';
p.xic2470.quan = [2.470  1/2 1 -1 1 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.xic2470.quark = [ 1 1 1 0 ]; % u(d) s  c b 

p.omega.ID = 'omega-sss-0.6725';
p.omega.quan = [1.6725  3/2 1 -3 0 0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.omega.quark = [ 0 3 0 0 ]; % u(d) s  c b 

p.Ks0892.ID = 'K-star0-892';
p.Ks0892.quan = [0.89581  1 0 1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Ks0892.quark = [ 1 1 0 0 ]; % u(d) s  c b 

p.Ksp892.ID = 'K-star-plus-892';
p.Ksp892.quan = [0.89166  1 0 1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Ksp892.quark = [ 1 1 0 0 ]; % u(d) s  c b 

p.B05279.ID = 'B0 meson';
p.B05279.quan = [5.27958 0 0 0 0 0 0 1];
p.B05279.quark = [1 0 0 1];
%% Mesons
p.f0980.ID = 'f0-980';
p.f0980.quan = [0.98  0 0 0 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.f0980.quark = [ 0 2 0 0 ]; % u(d) s  c b 
p.f0980.quark2 = [ 2 0 0 0 ]; % u(d) s  c b 
p.f0980.quark1 = [ 2 2 0 0 ]; % u(d) s  c b 

p.a0980.ID = 'a0-980';
p.a0980.quan = [0.98  0 0 0 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.a0980.quark = [ 2 0 0 0 ]; % u(d) s  c b 
p.a0980.quark1 = [ 2 2 0 0 ]; % u(d) s  c b 

p.K01460.ID = 'K0-1460';
p.K01460.quan = [1.460  0 0 1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.K01460.quark = [ 3 1 0 0 ]; % u(d) s  c b 

p.Ds2317.ID = 'Ds-2317';
p.Ds2317.quan = [2.317  0 0 1 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Ds2317.quark = [ 0 1  1 0 ]; % u(d) s  c b 
p.Ds2317.quark1 = [ 2 1  1 0 ]; % u(d) s  c b 

p.Tcc3797.ID = 'Tcc-3797';
p.Tcc3797.quan = [3.797  1 0 0 2  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Tcc3797.quark = [ 2 0  2 0 ]; % u(d) s  c b 

p.X3872.ID = 'X-3872';
p.X3872.quan = [3.872  1 0 0 1  1 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.X3872.quark = [ 0 0  2 0 ]; % u(d) s  c b 
p.X3872.quark1 = [ 2 0  2 0 ]; % u(d) s  c b 

p.Zp4430.ID = 'Z-plus-4430';
p.Zp4430.quan =[4.430  0 0 0 1  1 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Zp4430.quark = [ 2 0  2 0 ]; % u(d) s  c b 

p.Tcb07123.ID = 'T-cb0-7123';
p.Tcb07123.quan =[7.123  0 0 0 0  1 0 1 ]; % mass spin  B S  nc ncb nb nbb
p.Tcb07123.quark = [ 2 0  1 1 ]; % u(d) s  c b 

%% Baryons
p.Lam1405.ID = 'Lambda-1405';
p.Lam1405.quan =[1.405  1/2 1 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Lam1405.quark = [ 2 1  0 0 ]; % u(d) s  c b 
p.Lam1405.quark1 = [ 4 1  0 0 ]; % u(d) s  c b 

p.Thep1530.ID = 'Theta-plus-1530';
p.Thep1530.quan =[1.53  1/2 1 1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Thep1530.quark = [ 4 1  0 0 ]; % u(d) s  c b 

p.KKN1920.ID = 'Kbar-K-N-1920';
p.KKN1920.quan =[1.92  1/2 1 0 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.KKN1920.quark = [ 3 2  0 0 ]; % u(d) s  c b 

p.DN2790.ID = 'Dbar-N-2790';
p.DN2790.quan =[2.79  1/2 1 0 0  1 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.DN2790.quark = [ 4 0  1 0 ]; % u(d) s  c b 

p.DsN2919.ID = 'Dbar-star-N-2919';
p.DsN2919.quan =[2.919  3/2 1 0 0  1 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.DsN2919.quark = [ 4 0 1 0 ]; % u(d) s  c b 

p.Thecs2980.ID = 'Theta-cs-2980';
p.Thecs2980.quan =[2.98  1/2 1 -1 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Thecs2980.quark = [ 3 1  1 0 ]; % u(d) s  c b 

p.BN6200.ID = 'B-N-6200';
p.BN6200.quan =[6.2  1/2 1 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb
p.BN6200.quark = [ 4 0  0 1 ]; % u(d) s  c b 

p.BsN6226.ID = 'B-N-6226';
p.BsN6226.quan =[6.226  3/2 1 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb
p.BsN6226.quark = [ 4 0  0 1 ]; % u(d) s  c b 
%% Dibaryons
p.H2245.ID = 'H-2245';
p.H2245.quan =[2.245  0 2 -2 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.H2245.quark = [ 4 2  0 0 ]; % u(d) s  c b 

p.KNN2352.ID = 'KNN-2352';
p.KNN2352.quan =[2.352 1/2 2 -1 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.KNN2352.quark = [ 5 1  0 0 ]; % u(d) s  c b
p.KNN2352.quark1 = [ 7 1  0 0 ]; % u(d) s  c b

p.OO3228.ID = 'omega-omega-3228';
p.OO3228.quan =[3.228 0 2 -6 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.OO3228.quark = [ 0 6  0 0 ]; % u(d) s  c b

p.pO2552.ID = 'proton-omega-2552';
p.pO2552.quan =[2.552 2 2 -3 0  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.pO2552.quark = [ 3 3  0 0 ]; % u(d) s  c b

p.Hcpp3377.ID = 'Hc-plus-plus-3377';
p.Hcpp3377.quan =[3.377  1 2 -1 1  0 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.Hcpp3377.quark = [ 4 1  1 0 ]; % u(d) s  c b

p.DNN3734.ID = 'Dbar-NN-3734';
p.DNN3734.quan =[3.734  1/2 2 0 0  1 0 0 ]; % mass spin  B S  nc ncb nb nbb
p.DNN3734.quark = [ 7 0  1 0 ]; % u(d) s  c b

p.BNN7147.ID = 'BNN-7147';
p.BNN7147.quan =[7.147  1/2 2 0 0  0 0 1 ]; % mass spin  B S  nc ncb nb nbb
p.BNN7147.quark = [ 7 0  0 1 ]; % u(d) s  c b


