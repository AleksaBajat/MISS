using LinearAlgebra, Statistics

#Napisati funkciju, po uzoru na funkciju sum, koja određuje sumu elemenata proizvoljne matrice. 
#Implementirati opcioni ili imenovani parametar funkcije na osnovu koga će se računati suma elemenata po vrstama ili po kolonama
#matrice.

function sumButWorse(A,dim=0)
    if dim .== 0
        sum = 0
        for i in 1:size(A,1)
            for j in 1:size(A,2)
                sum = sum + A[i,j]
            end
        end
        return sum
    end

    if dim .== 1
        sum = []
        for j in 1:size(A,2)
            res = 0
            for i in 1:size(A,1)
                res = res + A[i,j]
            end
            push!(sum,res)
        end
        return sum
    end

    if dim .== 2
        sum = []

        for i in 1:size(A,1)
            res = 0
            for j in 1:size(A,2)
                res = res + A[i,j]
            end
            push!(sum,res)
        end
        return sum
    end
end