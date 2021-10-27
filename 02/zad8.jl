using Plots

t = 0:0.01:4

r = 1
q = 0
p = 1

tp = rem.(t, 2)

y1 = sqrt.(r^2 .- (tp .- p).^2) .+ q

y2 = (2 .* tp) .* (tp .< 1) .+ (-2 * tp .+ 4) .* (tp .>= 1)

y = min.(y1, y2)


plot(t,y1,lw=1)
plot!(t,y2,lw=1)
plot!(t,y,lw=3)