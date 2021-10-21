using LinearAlgebra, Statistics

T = ["Ime" "Pol" "Starost" "Tezina" "Visina";
"Ana" "z" 20 46 160;
"Bojan" "m" 24 52 165;
"Vlada" "m" 24 95 195;
"Gordana" "z" 30 57 160;
"Dejan" "m" 36 84 185;
"Zoran" "m" 22 80 180]

function getRelevantData(T)

    Muskarci= []
    Zene = []

   prosecnaVisinaZ = 0
   prosecnaVisinaM = 0

   prosecnaTezinaZ = 0
   prosecnaTezinaM = 0

    minStarost = T[2,3]
    maxStarost = T[2,3]

    minIndex = 2
    maxIndex = 2


for i in 2:size(T,1) 
    j = 2

    if(T[i,j] .== "m")
        push!(Muskarci, (T[i,j-1],T[i,j+1],T[i,j+2],T[i,j+3]))
        prosecnaVisinaM = prosecnaVisinaM + T[i,j+3]
        prosecnaTezinaM = prosecnaTezinaM + T[i,j+2]

        if T[i,j+1] < minStarost
            minStarost = T[i,j+1]
            minIndex = i;
        elseif T[i,j+1] > maxStarost
            maxStarost = T[i,j+1]
            maxIndex = i;
        end

    elseif(T[j,i] .== "z")
        push!(Zene, (T[i,j-1],T[i,j+1],T[i,j+2],T[i,j+3]))
        prosecnaVisinaZ = prosecnaVisinaZ + T[i,j+3]
        prosecnaTezinaZ = prosecnaTezinaZ + T[i,j+2]

        if T[i,j+1] < minStarost
            minStarost = T[i,j+1]
            minIndex = i;
        elseif T[i,j+1] > minStarost
            maxStarost = T[i,j+1]
            maxIndex = i;
        end
    end
    end
        
brojMuskaraca = length(Muskarci)
brojZena = length(Zene)


println(Muskarci, brojMuskaraca)
println(Zene,brojZena)

println("Prosecna visina i tezina zenskih osoba ",prosecnaVisinaZ/brojZena," ", prosecnaTezinaZ/brojZena)
println("Prosecna visina i tezina zenskih osoba ",prosecnaVisinaM/brojMuskaraca," ", prosecnaTezinaM/brojMuskaraca)

println("Najstarija osoba ", (T[maxIndex,1],T[maxIndex,3],T[maxIndex,3],T[maxIndex,4]))
println("Najmladja osoba ", (T[minIndex,1],T[minIndex,3],T[minIndex,3],T[minIndex,4]))

println("Standardna devijacija")

end