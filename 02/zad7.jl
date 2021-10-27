using Plots

# Kruznica sa centrom u tacki C(p,q)  i poluprecnikom r

# (x - p)^2 + (y - q)^2 = r^2

t = 0:0.01:2

p = 1
q = 0
r = 1

y = sqrt.(r^2 .- (t .- p).^2) .+ q

plot(t,y)