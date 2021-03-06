g = []; 
tx = zeros(N,1);
niter = 100;
for i=1:niter
    tx = (1-mu/2)*tx + mu/2*rProxG( rProxF(tx,gamma),gamma );
    x = ProxF(tx,gamma);
    g(i) = G(x);
end
clf;
h = plot(g);
set(h, 'LineWidth', 2);
axis tight;
