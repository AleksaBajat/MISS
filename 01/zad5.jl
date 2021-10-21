using LinearAlgebra, Statistics

function SvastaRadi(Arr)
    m = diag(Arr)
    tempArr = triu(Arr,1)
    s = mean(tempArr[tempArr.>0])

    m,s
end