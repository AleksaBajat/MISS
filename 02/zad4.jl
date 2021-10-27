using Plots

t = 0:0.01:9

## Prvo amplituda je veca pa moramo da pomnozimo sinus - A = 2

## Drugo perioda nije 2Pi tako da kada uzmemo formulu
## A * sin(wt) => A * sin(2pi/T * t) znaci kada je perioda 2pi onda se pokrati i dobijemo A * sin(2pi/2pi * t) => A * sin(t) inace racunamo

y = 2 * sin.(pi / 3 .* t)

## Primecujemo da sa gornje strane imamo ogranicenje na y = 1
## I sa donje y = -1

y1 = max.(min.(y, 1), -1)

plot(t,y)

plot!(t,y1,lw=3)