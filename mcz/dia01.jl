# Operadores básicos
2+2
2-2

2/3
2\3
x=2
y=x*2
div(2,3)
2//3+2
(2/3)+2
8/3

3^4 #Potenciação.
sqrt(9)

# Vetores
#x=rand(40)
x=rand(2:300,40) #Dentro do intervalo de 2 a 300, escolha aleatoriamente 40 números e atribua ao objeto x

y=rand(Bool,7)

z=rand(Int64,5)

h=rand(Char,50)

😢="tisti"

using Random
Random.seed!(42)

# Matrizes
😀 = rand(2:30,3,4)
#ou:
#😀 = [1 2 3;1 3 4]
😀[2,3]
😀[2:3,3] #Pega as linhas 2 a 3 da coluna 3
😀[2:3,] #Pega as linhas 2 a 3 da primeira coluna
😀[2:3,:] #Pega as linhas 2 a 3 de todas as colunas

3 in 😀

cafe = rand(31:60,3,4)

😀.*cafe #O pontinho faz a operação acontecer para cada elemento

um = rand(2:15::Int64,5)

dois = rand(2:15::Int64,5)

um.==dois
um.!=dois
um.>dois
um.<dois
um .| dois
um .& dois

# Ordenando vetores
sort(um)



## Procurar um número numa matriz e retornar mensagem se não encontrá-lo
base = rand(2:70::Int64,3,4)
n_search = 45
base2 = reshape(base, (12,1))
n_pos = rand(base2,1)[1,1]
pos = findall(isequal(n_pos), base) #O findall retorna um  objeto cartesiano

d = [1 2 3; 1 4 5]
n_procura = 1
d2 = reshape(d, (size(d)[1]*size(d)[2],1))
procura = rand(d2,1)[1,1]
procura = findall(isequal(n_procura), d) #O findall retorna um  objeto cartesiano
for i in 1:length(procura)
    println("O número $n_procura está em linha ", procura[i][1], " coluna ", procura[i][2])
end


if n_search in base
    println(n_search, " encontrado")
else
    println(n_search, " Não encontrado")
end

pos

base = rand(2:70::Int64,3,4)
g = 19
for i in 1:size(base)[1]
    for j in 1:size(base)[2]
        if base[i,j]==g
            println("O elemento $g está na linha ", i, ", coluna ", j)
        end
    end
end



if base3 in base
    println(base[i,j])
find(base3,base2)
if n_search in base
    println(n_search, " encontrado")
else
    println(n_search, " Não encontrado")
end
