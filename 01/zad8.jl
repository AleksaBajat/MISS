using LinearAlgebra, Statistics

#Napisati funkciju koja određuje poziciju nenultih elemenata proizvoljne matrice. Zadatak rešiti bez korišćenja funkcije findall.

function NenultiElementi(A)
    pozicije = []
    for i in 1:size(A,1)
        for j in 1:size(A,2) 
            if(A[i,j] .!= 0)
                push!(pozicije,(i,j))
            end
        end
    end
    return pozicije
end

#zanimalo me je kako radi findall

#function NenultiElementiSaFindall(A)
 #   return findall(A .!= 0)
#end