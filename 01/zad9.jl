using LinearAlgebra, Statistics

#Napisati funkciju, po uzoru na funkciju prod, koja određuje proizvod
#svih elemenata vektora

function prodButWorse(vector)
    prod = 1
    for i in 1:length(vector)
        prod = prod * vector[i]
    end
    return prod
end