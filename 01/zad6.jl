using LinearAlgebra, Statistics

function SvastaRadi2(A,B)
    tempA = tril(A,-1)
    m = tempA[tempA .> 0]
    m = m[rem.(m,3) .== 0]

    meanValue = mean(diag(A))

    s = reverse(B,dims=2)
    s = diag(s)

    s = s[s .> meanValue]

    m,s
end