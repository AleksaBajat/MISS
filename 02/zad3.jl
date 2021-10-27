using Plots

t = 0:0.01:10

tp = rem.(t, 2)

y = (4 / 10 .* t) .* (tp .< 1)
y1 = (4) .* (tp .< 1)

plot(t, y1)
plot!(t,y,lw=3)