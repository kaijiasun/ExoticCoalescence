function [NC1, NC2,NC3] = EmpCoalNLsr(T,V,wRMS,mv,Nv,gc,L,SR,WorRMS,dis)
% Num is the number of particles
% T is temperature, rms is root-mean-square radius, 
% mv is the vector of mass
% Nv is the dN/dy of particles.
% unit T--GeV, V--fm^3, m1,m2--GeV,
% w: GeV
% rms: fm
% gc: coalescence factor: spin
% L : angula momentum for one particle.
% SR: 0,1,2: 0--> non correction, 1---> first kind correction, 2-->second
% kind correction
% WorRMS, determines whether w or RMS
% dis:  wheter disp the information
% EmpCoalN(0.1116,pi*15.6^2*10.6,1.96,[0.938,0.938],[16,16],3/4)   deuteron
hbarc =0.19733;
Num=length(mv);
for k=1:Num-1
     mu( k) = (k+1)/k*(1/sum(mv(1:k))+1/mv(k+1))^-1;
end
if strcmp(WorRMS,'RMS')
    rms = wRMS;
    w = 3/(2*Num)*1/sum(mv)* (sum(1./mv) *sum(mv) - Num)*1/rms^2*hbarc^2;
    if dis==1
    disp('Assuming s wave for rms');
    end
else if strcmp(WorRMS,'w')
        w = wRMS;
    end
end
%w = 3/(2*Num)*1/sum(mv)* (sum(1./mv) *sum(mv) - Num)*1/rms^2;
sig2v = 1./(mu*w)*hbarc^2;
%NC1 = gc*prod(Nv)*prod((4*pi*sig2v).^(3/2)./(V*(1+2*T/w)))*AngF1(L,2*T/w);
NC1 = gc*V*prod(Nv)*prod((4*pi./(mv*w/hbarc^2)).^(3/2)./(V*(1+2*T/w)))*(sum(mv)*w/hbarc^2/(4*pi))^(3/2)*(1+2*T/w)*AngF1(L,2*T/w);
NC2 = gc*prod(Nv)*prod((4*pi*sig2v).^(3/2)./(V*(1+2*T/w).^(3/2)));
NC3 = gc*prod(Nv)*(sum(mv)*w/hbarc^2)^(3/2)/prod((mv*w/hbarc^2).^(3/2))*((4*pi).^(3/2)./(V*(2*T/w).^(1/2).*(1+2*T/w)))^(Num-1) *AngF(L,(2*T/w).^(1/2));
if SR ==1
    NC2 = NC2*gsr1(mv,T);
    NC3 = NC3*gsr1(mv,T);
else
    if SR ==2
        NC2 = NC2*gsr2(mu,T);
        NC3 = NC3*gsr2(mu,T);
    end
end

if (dis==1)
disp('dN/dy for case 1:')
disp(NC1);
disp('dN/dy for case 2:')
disp(NC2);
disp('dN/dy for case 3:')
disp(NC3);
end

end

function  s = AngF(L,x)
    s = (x.^2./(x.^2+1))^L;
    for k=0:L
        G(k+1) = nchoosek(L,k)*1/(2*k+1)/x^(2*k);
    end
    s=s*sum(G);
end

function  s = AngF1(L,x)
    s = (x/(x+1))^L;
    s=s*dfac(2*L)/dfac(2*L+1);
end

function s = gsr1(mv,T)
              s = (1+15/8*T/sum(mv))/prod(1+15/8*T./mv);
end

function s = gsr2(mu,T)
              s = 1/prod(1+15/8*T./mu);
end