% Generate Gaussian noise
noise = randn([1 10000]);
[n x] = hist(noise, linspace(-3, 3, 21));
%disp([x; n]);
plot(x, n);

% TODO: Try generating other kinds of random numbers.
% randn()
% rand()
% randi()
%       How about a 2D grid of random Gaussian values?
