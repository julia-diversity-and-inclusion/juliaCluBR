Pkg.add(
    [
    "HypothesisTests",
    "DataFrames",
    "CSV",
    "GLM",
    "Plots",
    "RDatasets"
    ]
    )
using HypothesisTests,
      DataFrames,
      CSV,
      GLM,
      Plots,
      RDatasets

# Revisando ontem

# 1. Importar DataFrame
iris = dataset("datasets", "iris")


#Salvar o dataset em csv
CSV.write("iris.csv", iris)

#Ler CSV
iriscsv=CSV.read("iris.csv")

# 2. Subset só as setosa
iris.setosa = iris[iris.Species.=="setosa",:]

# 3. Subset só a coluna PetalLength
irisplength = iris[iris.Species.=="setosa", [:Species, :PetalLength]]

# 4. Histograma dessa coluna
# Gaio Workspace
graph = histogram(irisplength.PetalLength, bins = 5)
plot(graph, fillcolor = :red)
plot(graph, linecolor = :white)
plot(graph, xaxis = ("Petal Length"), yaxis = ("Number of Individuals"))
plot(graph, bg_color = :black)

# End Gaio Workspace

# 1. Cor do preenchimento
# 2. Cor da borda
# 3. Legenda
# 4. Eixos
Pkg.add("StatsPlots")
using StatsPlots
boxplot(["iris[iris.Species"]"], "[iris.PetalLength]")
# 5. Fundo
# 6. Valores dos eixos
###
histogram(irisplength.PetalLength, bins = 5)

# Testes estatísticos
iris2 = iris[(iris.Species.=="setosa") .| (iris.Species.=="versicolor"),:]
describe(iris2.PetalLength)
t = OneSampleTTest(iris2.PetalLength, iris2.SepalLength)
