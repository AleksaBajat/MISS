using LinearAlgebra, Statistics

A = round.(rand(5,5)*10)
PresekPViPK = A[2:2:end,2:2:end]
