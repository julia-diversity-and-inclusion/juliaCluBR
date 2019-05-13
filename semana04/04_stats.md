# Estatística

Instale e carregue os pacotes necessários.

```julia
using Pkg
Pkg.add(
    [
    "HypothesisTests",
    "DataFrames",
    "CSV",
    "ExcelFiles",
    "GLM",
    "DataFrames",
    "Plots"
    ]
    )
using HypothesisTests,
      DataFrames,
      CSV,
      ExcelFiles,
      GLM,
      DataFrames,
      Plots
```


Leia os arquivos necessários.

```julia
xi = CSV.read("teste_estatistico_pareado.csv")
describe(xi)
```

# Teste *t*

Precisamos converter as colunas para conseguir rodar o primeiro teste.

```julia
ai = convert(Vector{Float64}, xi.score1)
bi = convert(Vector{Float64}, xi.score2)
t = OneSampleTTest(ai, bi)
```

# Regressão linear

```julia
ai = convert(Vector{Float64}, xi.score1)
bi = convert(Vector{Float64}, xi.score2)
df = DataFrame(ai = ai, bi = bi)
reglinear = lm(@formula(ai ~ bi))
```

# Qui-quadrado

```julia
ia = convert(Vector{Int64}, xi.score1)
ib = convert(Vector{Int64}, xi.score2)
chi2 = ChisqTest(vcat(ia, ib)')
```

# ANOVA

```julia
dat = DataFrame(CSV.read("para_anova.csv"; delim = ","))
model = lm(@formula(tempo ~ 1 + tratamento), dat)
nullmodel = lm(@formula(tempo ~ 1), dat)
test_model = ftest(model.model, nullmodel.model)
nullmodel.model
```

# Links

- T-test: http://juliastats.github.io/HypothesisTests.jl/stable/

- ANOVA: https://github.com/JuliaStats/GLM.jl/blob/master/src/ftest.jl
