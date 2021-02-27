function N = Kofunstat(control,param,particle,qmass)

massu = qmass.u; masss=qmass.s; massc=qmass.c;massb=qmass.b;
SR = control.SR; WorRMS = control.WorRMS;dis=control.dis;
T = param(1); V = param(2)*10^3; Nu = param(3); Ns = param(4); Nc = param(5);Nb=param(6);

qcontent = particle.quark;
g = (particle.quan(2)*2+1)/2^sum(qcontent);ID = particle.ID; 

L = particle.quancoal(1); w = particle.quancoal(2); 
Nquark = [Nu*ones(1,qcontent(1)) Ns*ones(1,qcontent(2)) Nc*ones(1,qcontent(3)) Nb*ones(1,qcontent(4)) ];
Mquark= [massu*ones(1,qcontent(1)) masss*ones(1,qcontent(2)) massc*ones(1,qcontent(3)) massb*ones(1,qcontent(4)) ];
[ c1,c2 ,c3]=EmpCoalNLsr(T,V,w,Mquark,Nquark,g,L,SR,WorRMS,dis);
N = [c1,c2,c3];