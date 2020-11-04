function [Throughput,Throughput_perNode] = bianchi_analysisCaseA(cwMin,N)
%%
% 
% $$e^{\pi i} + 1 = 0$$
% 
%BIANCHI_ANALYSIS Summary of this function goes here
%m = # of stages; N = # of devices
W = cwMin;
m = 10;
E_P = 512 * 8;
Phy_H = 128;
Mac_H = 272;
SIFS =  28*10^-6;
DIFS = 128*10^-6;
ACK = 112 + Phy_H;
Prop_delay = 10^-6;
Ts = Phy_H + Mac_H + E_P + SIFS + DIFS + ACK + 2*(Prop_delay);
Tc = Phy_H + Mac_H + E_P + DIFS + Prop_delay;
for i=1:1:N
x0 = [0 1];
f1 = @(p) (p-1+(1-2*(1-2*p)/((1-2*p)*(W+1)+ p*W*(1-(2*p)^m)))^(i-1));
p_packetCollides = fzero(f1,x0);
tau = 2*(1-2*p_packetCollides)./((1-2*p_packetCollides)*(W+1)+ p_packetCollides*W*(1-(2*p_packetCollides)^m));
Ptr = 1 - (1 - tau)^i;
Ps = i*tau*(1-tau)^(i-1)/Ptr;
E_rv = (1/Ptr) -1;
Throughput(i) = (Ps * E_P)/(E_rv + (Ps*Ts) + ((1-Ps)*Tc));
end
Throughput_perNode = Throughput/N;
plot(1:N,Throughput);
title('Analysis');
xlabel('Number of stations');
ylabel('Saturation Throughput');

end