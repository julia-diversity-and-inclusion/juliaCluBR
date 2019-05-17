
<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Julia-for-Data-Science" data-toc-modified-id="Julia-for-Data-Science-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Julia for Data Science</a></span><ul class="toc-item"><li><span><a href="#Installing-Julia-Lang-in-Ubuntu" data-toc-modified-id="Installing-Julia-Lang-in-Ubuntu-1.1"><span class="toc-item-num">1.1&nbsp;&nbsp;</span>Installing Julia Lang in Ubuntu</a></span></li><li><span><a href="#Installing-IJulia-package-to-run-Julia-in-Jupyter-Notebook" data-toc-modified-id="Installing-IJulia-package-to-run-Julia-in-Jupyter-Notebook-1.2"><span class="toc-item-num">1.2&nbsp;&nbsp;</span>Installing <code>IJulia</code> package to run Julia in Jupyter Notebook</a></span></li></ul></li><li><span><a href="#Testing" data-toc-modified-id="Testing-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>Testing</a></span><ul class="toc-item"><li><span><a href="#text" data-toc-modified-id="text-2.1"><span class="toc-item-num">2.1&nbsp;&nbsp;</span>text</a></span></li></ul></li></ul></div>

# Julia for Data Science

## Installing Julia Lang in Ubuntu

<!--
```shell
# outdated method
# sudo apt-add-repository ppa:staticfloat/juliareleases
# sudo apt update && sudo apt install Julia
```
-->

Download Julia from https://julialang.org/downloads/

```shell
wget https://julialang-s3.julialang.org/bin/linux/x64/1.1/julia-1.1.0-linux-x86_64.tar.gz
```

Extract content

```shell
tar -vzxf julia-1.1.0-linux-x86_64.tar.gz
```

Create symlink for your bin folder

```shell
sudo ln -s ~/julia-1.1.0/bin/julia /bin/julia
```



## Installing `IJulia` package to run Julia in Jupyter Notebook

In your terminal, type `julia` and hit enter. You should see:

```julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.1.0 (2019-01-21)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

```

Now, run the following commands:

```julia
using Pkg
Pkg.add("IJulia")
```

This command will install the kernel to Julia run inside Jupyter Notebook

# Testing


```julia
for i=1:10
    println(i)
end
```

    1
    2
    3
    4
    5
    6
    7
    8
    9
    10



```julia
%lsmagic
```


Julia does not use the IPython `%magic` syntax.   To interact with the IJulia kernel, use `IJulia.somefunction(...)`, for example.  Julia macros, string macros, and functions can be used to accomplish most of the other functionalities of IPython magics.

The Julia analogues of many IPython magics are printed if you try to input the IPython magic in a code cell.



Others hacks about how to use Julia in Jupyter Notebooks: https://stackoverflow.com/questions/24091373/best-way-to-run-julia-code-in-an-ipython-notebook-or-python-code-in-an-ijulia-n


```julia
IJulia.Pkg.add("DataFrames")
```

    [32m[1m  Updating[22m[39m registry at `~/.julia/registries/General`
    [32m[1m  Updating[22m[39m git-repo `https://github.com/JuliaRegistries/General.git`
    [?25l[2K[?25h[32m[1m Resolving[22m[39m package versions...
    [32m[1m Installed[22m[39m TableTraits ───────────────── v0.4.1
    [32m[1m Installed[22m[39m Reexport ──────────────────── v0.2.0
    [32m[1m Installed[22m[39m DataStreams ───────────────── v0.4.1
    [32m[1m Installed[22m[39m DataStructures ────────────── v0.15.0
    [32m[1m Installed[22m[39m DataFrames ────────────────── v0.17.1
    [32m[1m Installed[22m[39m CodecZlib ─────────────────── v0.5.2
    [32m[1m Installed[22m[39m Requires ──────────────────── v0.5.2
    [32m[1m Installed[22m[39m Tables ────────────────────── v0.1.17
    [32m[1m Installed[22m[39m CategoricalArrays ─────────── v0.5.2
    [32m[1m Installed[22m[39m StatsBase ─────────────────── v0.29.0
    [32m[1m Installed[22m[39m WeakRefStrings ────────────── v0.5.7
    [32m[1m Installed[22m[39m Missings ──────────────────── v0.4.0
    [32m[1m Installed[22m[39m IteratorInterfaceExtensions ─ v0.1.1
    [32m[1m Installed[22m[39m SortingAlgorithms ─────────── v0.3.1
    [32m[1m Installed[22m[39m TranscodingStreams ────────── v0.9.0
    [32m[1m Installed[22m[39m OrderedCollections ────────── v1.0.2
    [32m[1m  Updating[22m[39m `~/.julia/environments/v1.1/Project.toml`
     [90m [a93c6f00][39m[92m + DataFrames v0.17.1[39m
    [32m[1m  Updating[22m[39m `~/.julia/environments/v1.1/Manifest.toml`
     [90m [324d7699][39m[92m + CategoricalArrays v0.5.2[39m
     [90m [944b1d66][39m[92m + CodecZlib v0.5.2[39m
     [90m [a93c6f00][39m[92m + DataFrames v0.17.1[39m
     [90m [9a8bc11e][39m[92m + DataStreams v0.4.1[39m
     [90m [864edb3b][39m[92m + DataStructures v0.15.0[39m
     [90m [82899510][39m[92m + IteratorInterfaceExtensions v0.1.1[39m
     [90m [e1d29d7a][39m[92m + Missings v0.4.0[39m
     [90m [bac558e1][39m[92m + OrderedCollections v1.0.2[39m
     [90m [189a3867][39m[92m + Reexport v0.2.0[39m
     [90m [ae029012][39m[92m + Requires v0.5.2[39m
     [90m [a2af1166][39m[92m + SortingAlgorithms v0.3.1[39m
     [90m [2913bbd2][39m[92m + StatsBase v0.29.0[39m
     [90m [3783bdb8][39m[92m + TableTraits v0.4.1[39m
     [90m [bd369af6][39m[92m + Tables v0.1.17[39m
     [90m [3bb67fe8][39m[92m + TranscodingStreams v0.9.0[39m
     [90m [ea10d353][39m[92m + WeakRefStrings v0.5.7[39m
     [90m [9fa8497b][39m[92m + Future [39m
    [32m[1m  Building[22m[39m CodecZlib → `~/.julia/packages/CodecZlib/9jDi1/deps/build.log`



```julia
IJulia.Pkg.update()
```

    [32m[1m  Updating[22m[39m registry at `~/.julia/registries/General`
    [32m[1m  Updating[22m[39m git-repo `https://github.com/JuliaRegistries/General.git`
    [?25l[2K[?25h[32m[1m Resolving[22m[39m package versions...
    [32m[1m  Updating[22m[39m `~/.julia/environments/v1.1/Project.toml`
    [90m [no changes][39m
    [32m[1m  Updating[22m[39m `~/.julia/environments/v1.1/Manifest.toml`
    [90m [no changes][39m



```julia
using DataFrames
```

    ┌ Info: Precompiling DataFrames [a93c6f00-e57d-5684-b7b6-d8193f3e46c0]
    └ @ Base loading.jl:1186



```julia
df = DataFrame(Name = ["Ajava Rhodiumhi", "Las Hushjoin"], Count = [14.04, 17.3], OS = ["Ubuntu", "Mint"])
```




<table class="data-frame"><thead><tr><th></th><th>Name</th><th>Count</th><th>OS</th></tr><tr><th></th><th>String</th><th>Float64</th><th>String</th></tr></thead><tbody><p>2 rows × 3 columns</p><tr><th>1</th><td>Ajava Rhodiumhi</td><td>14.04</td><td>Ubuntu</td></tr><tr><th>2</th><td>Las Hushjoin</td><td>17.3</td><td>Mint</td></tr></tbody></table>




```julia
df = DataFrame()
```




<table class="data-frame"><thead><tr><th></th></tr><tr><th></th></tr></thead><tbody><p>0 rows × 0 columns</p></tbody></table>


