function out = fm_modulator(in)
fc = in(1);
kf = in(2);

t = linspace(0,5,fc);
message = sin(100*pi*t);
wc = 2*pi*fc;
mt = @(t) message;
disp(mt);
qt = kf*integral(mt,-5,5,'ArrayValued',true);

out = cos(wc*t + qt);
end