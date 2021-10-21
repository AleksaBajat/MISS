using LinearAlgebra, Statistics

A = round.(rand(5,5)*10)
DeljiviSa9 = A[rem.(A,9) .== 0]
