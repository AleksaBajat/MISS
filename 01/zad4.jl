using LinearAlgebra,Statistics

function ZbirElemParno(A)
    sum = 0
    for i in 1:size(A,1)
        for j in 1:size(A,1)
            if(rem(i+j,2) .== 0)
                sum = sum + A[j,i]
            end
        end
    end
    return sum
end