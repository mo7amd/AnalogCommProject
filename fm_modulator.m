function out = fm_modulator(in)
fc = in(1);
kf = in(2);
message = in(3);

t = linspace(0,5,fc);
wc = 2*pi*fc;
mt = @(t) message;
disp(mt);
qt = kf*integral(mt,-inf,5);

out = cos(wc*t + qt);
end