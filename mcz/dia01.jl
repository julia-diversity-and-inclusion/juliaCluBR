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


---
# Gráficos
## Pacotes para DataFrames
using Pkg
#Pkg.installed() #lista os pacotes que você já tem e as correspondentes versões
Pkg.update()
Pkg.add([ #Instalar pacotes
        "DataFrames",
        "CSV",
        "Statistics",
        "Random",
        "RDatasets"
        ])
using DataFrames, #Carregar
        CSV,
        Statistics,
        Random,
        RDatasets

Pkg.add("Plots")

## Criando um dataframe
?DataFrames

iris = dataset("datasets", "iris")

tmp_iris = iris[iris[:Species] .== "setosa", :]

deletecols!(tmp_iris, :PetalLength)

mean(tmp_iris[:SepalLength])

# Inserting a existing line
insert!(df, 4, df2[1], :Arthur2)

# Appending a existing row
push!(df, df[1,1:4])

#Criando conjuntos de dados:
dados1 = ["Superman", "Batman", "Aquaman"]
dados2 = ["Iroman", "Daredevil", "Hulk"]
dados = DataFrame(DC = (dados1), Marvel = (dados2))
heróis = dados

dados3 = ["Primário", "Primário", "Primário", "Secundário", "Secundário", "Secundário"]
dados4 = [15, 10, 12, 15, 18, 20]
dados5 = [25, 24, 21, 27, 33, 40]
planilha = DataFrame(Ambiente = (dados3), Riqueza = (dados4), Temperatura = (dados5))
bichinhos = planilha

Sith = ["Vader", "Palpatine", "Kylo", "Maul", "Dooku"]
Jedi = ["Obi-Wan", "Yoda", "Luke", "Qui-Gon", "Anakin"]
Lightsaber = DataFrame(Sith = (Sith), Jedi = (Jedi))

#Exportando os dados:
CSV.write("Bichinhos.csv", bichinhos, writeheader = true)
CSV.write("Heróis.csv", heróis, writeheader = true)
CSV.write("Star Wars.csv", Lightsaber, writeheader = true)

#Importando os dados:
CSV.read("Bichinhos.csv")
CSV.read("Heróis.csv")
CSV.read("Star Wars.csv")

iris = dataset("datasets", "iris")
flores = iris[4:5,]
mean(flores.PetalWidth)
mean(flores.PetalWidth[flores[:Species] .== "setosa", :])
mean(flores.PetalWidth[flores[:Species] .== "virginica", :])


dfg = DataFrame(pao=rand(list,5), queijo=rand(list,5), Arthur= rand(list,5))

vetor = DataFrame(pao="batata",queijo="queijo",Arthur="Arthur")

dfg1 = [dfg; vetor]

dfg1 = dfg1[dfg1[3,].=="Bola",:] #Subset do dfg1, extraindo as linhas que, na coluna 3, têm o elemento "Bola"
    # Semelhante a dfg1[dfg1.queijo.=="Bola"]
describe(dfg1) #Descreve o dataframe
dump(dfg) #lista os elementos do dataframe
first(dfg,3) #Mostra as primeiras três linhas do df
last(dfg,3) #Mostra as 3 últimas linhas do df
unique(dfg[1]) #Retorna os valores únicos para a coluna 1 do df
dfg2 = stack(dfg,2)
dfg2 = unstack(dfg2,2)


iris = dataset("datasets", "iris")
iris2 = deletecols(iris,:PetalLength)
iris2 = iris[iris.Species.=="setosa",:]
length(iris2.PetalLength.<=quantile(iris2.PetalLength, 0.25))
median(iris2.PetalLength)

using Plots
histogram(iris2.PetalLength)
vline!([mean(iris2.PetalLength)],color="red")
plot!(iris2.PetalLength)
