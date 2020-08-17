function[TKE_flux] = TKE_flux(T_mean,H_mean,h)
% Estimation of dissipation of a breaking wave by Battjes and Janssen(1978)
qb3 = zeros(76,1);
alpha = 1.0;
gamma = 0.73;
g = 9.80665;
qb = 100;
hb = gamma*h;
% gb‚ÌŒvZAŒë·‚ª1%ˆÈ‰º‚É‚È‚é‚Ü‚ÅŒvZ
for j = 1:76
    for i = 1:1000000
        qb2 = 1 + log(qb)*((H_mean(j)/hb).^2);
        if abs((qb2-qb)/qb) < 0.01
            qb3(j) = qb2;
        else qb = qb2;
        end
    end
end
% mean wave frequency
f = 1./T_mean;
TKE_flux = (alpha*g.*qb3.*f*hb^2)/4;
