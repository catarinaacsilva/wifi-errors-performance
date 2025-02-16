% 2.a.

p_10m6 = (1 / (1 + (1/180) + (1/180) * (20/40) + (1/180) * (20/40) * (10/20) + (1/180) * (20/40) * (10/20) * (5/2))) * 100
p_10m5 = (1/180) * p_10m6
p_10m4 = (20/40) * p_10m5
p_10m3 = (10/20) * p_10m4
p_10m2 = (5/2) * p_10m3

% 2.b.
(10^-6*p_10m6 + 10^-5*p_10m5 + 10^-4*p_10m4 + 10^-3*p_10m3 + 10^-2*p_10m2) / 5

% 2.c.
t_10m6 = (1/1) * 60
t_10m5 = (1/(180 + 20)) * 60
t_10m4 = (1/(40 + 10)) * 60
t_10m3 = (1/(20 + 5)) * 60
t_10m2 = (1/2) * 60

% 2.d.
p_I = p_10m3 + p_10m2

% 2.e.
p_aI = (10^-3*p_10m3 + 10^-2*p_10m2 ) / p_I

% 2.f.
t_aI = 0;
for i = 0:10
    t_aI = t_aI + (t_10m3 + t_10m2 * i) * (20/25) * (5/25)^i;
end