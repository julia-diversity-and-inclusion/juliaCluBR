# Tutorial de instalação da linguagem de programação Julia :computer:

Olá a todas e a todos! Sejam bem vindas e bem vindos :heart:! Este é um tutorial de instalação da linguagem de programação Julia! Se você chegou até aqui, segure em nossas mãos e bora deixar nossa máquina pronta para o trabalho!

Neste tutorial veremos como instalar a versão mais recente de Julia (compatível com os nosso computadores) e daremos os primeiros passos no mundo da programação! Estão prontas e prontos para o desafio?

TOC

- Acessando o site oficial da linguagem Julia
- Identificando a arquitetura do nosso sistema operacional
- Baixando a versão ideal para o nosso sistema operacional
- Instalando!
- Hello, World!

## Acessando o site oficial da linguagem Julia

Antes de tudo, vamos acessar o site da linguagem Julia! Abra sua navegador preferido e digite:

```
julialang.org
```

Se preferir, simplesmente clique [aqui](https://julialang.org/).

Você verá isso:

![](src/00_julia-front.png)

Antes de instalarmos qualquer coisa, vamos conferir a arquitetura do nosso sistema operacional!

## Identificando a arquitetura do nosso sistema operacional

<!--
TODO: A instalação no Windows 7 necessita de pacotes adicionais
BODY: Comando para descobrir qual é a versão do Windows pelo terminal: https://www.windows-commandline.com/find-windows-os-version-from-command/
-->

Nesse passo, vamos descobrir qual é arquitetura utilizada pelo nosso sistema operacional. Antes de tudo, estamos assumindo que você utiliza o sistema operacional Windows. Para instalar Julia em outros sistemas operacionais, por favor, procure os instrutores/monitores pessoalmente ou pelo nosso canal no [Slack](http://julia-diversity-ptbr.slack.com).

Já que vamos entrar no mundo da programação, que tal arriscarmos alguns comandos no terminal (aquela tela com fundo preto que os *hackers* utilizam)? Vem com a gente!

Na barra de busca do Windows, busque por **prompt de comando**. Você deve ver isso:

![](src/02_prompt-win.png)

Já me sinto um *hacker*!

Certo! Agora vamos logo descobrir qual é a arquitetura do nosso sistema! Digite os seguintes comandos no terminal:

```
wmic OS get OSArchitecture
```

Se o seu sistema utiliza a arquitetura de 32-bit, você verá:

```
OSArchitecture
32-bit
```

Caso contrário, você verá:

```
OSArchitecture
64-bit
```

É dessa informação que precisamos para instalar Julia em nosso computador! Vamos voltar à página de Julia lá no nosso navegador.

## Baixando a versão ideal para o nosso sistema operacional

Voltando à página de Julia!

A opção para download estará disponível logo na página inicial. Mas vamos instalar a versão de Julia ideal para o nosso computador. Clique na aba de [Download](https://julialang.org/downloads/), fica ali ao lado da logo Julia.

Estamos nesta página agora, certo?

![](src/01_julia-download.png)

Descobrimos a arquitetura do nosso sistema no passo anterior, agora vamos procurar qual é o instalador ideal para nosso computador. Tudo o que você precisa é clicar no link do instalador ideal para o seu computador e o download será iniciado automaticamente.
