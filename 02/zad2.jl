using Plots

t = 0:0.01:2 * pi

tp = rem.(t, 1)

y = sin.(t) .* (tp .< 0.5)

y1 = sin.(t)

plot(t,y1)
plot!(t,y,lw=3)