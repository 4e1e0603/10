---
title: Programming in Julia
author: David Landa
category: programming
---

# Programming in Julia

# How to Install Julia on Ubuntu

## Introduction

In this guide, I’ll show you how to get started with Julia on Ubuntu 16.04 (or above).

## Installation

Open a new terminal and go to your Downloads folder:

    cd ~/Downloads

Use wget to retrieve the latest compressed Julia Linux Binaries:

    wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.2-linux-x86_64.tar.gz

Extract the .tar.gz:

    tar -xvzf julia-1.5.2-linux-x86_64.tar.gz

Copy the extracted folder to /opt:

    sudo cp -r julia-1.5.2 /opt/

Finally, create a symbolic link to julia inside the /usr/local/bin folder:

    sudo ln -s /opt/julia-1.5.2/bin/julia /usr/local/bin/julia

## Conclusion

Finally, you can test your installation by re-opening a terminal and typing:

    julia


### Windows

Julia se naistaluje do & `C:\Users\dlanda\AppData\Local\Programs\Julia 1.5.4`.
Pokud ji chceme volat z příkazové řádky v PowerShell musíme zadat např.


    & 'C:\Users\dlanda\AppData\Local\Programs\Julia 1.5.4\bin\julia.exe'


Poté se nám zobrazí interaktivní prostředí tzv. REPL (Read-Evalueate-Print-Loop)

```julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.5.4 (2021-03-11)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |
```

Nyní můžeme pracoat v interktivním režimu

```
julia > 1 + 1
2
```

Pomocí `CTRL-D` ukončíme REPL


## Packages

V REPL zadáme `]` a můžeme pracovat s package managerem

    (@v1.5) pkg>

## Virtuální prostředí

Pokud znáte pojem virtuální prostředí při práci s jazykem Python, mohlo by vás napadnout, jak s virtuálním prostředím pracovat v Julii.
Ve výchozím stavu se nacházíme v prostředí


[doc: https://pkgdocs.julialang.org/v1.2/environments/]


    (@v1.5) pkg> activate .
    Activating new environment at `C:\Users\dlanda\Projects\Personal\hello-julia\Project.toml`

    (hello-julia) pkg>

# Functions

Julia má zabudované funkce jako `is`, `isa`, `typeof`, `throw`.
protože zabudované funkce jsou často implementované v jazyce C,
nemůžeme je specializovat podle typu arguementu.
Můžeme samozřejmě definovat vlastní (generické) funkce.

```julia

name() = ...

function name()
    ...
end

n::Type
x -> ...

name(n) do
    ...
end
```

Funkce vs metoda.
Každá nespecializovaná funkce má přiřazenu jednu metody.
Každá specializace funkce je tedy další etodou této funkce.

Všechny funkce jsou generické nebo jinak řečeno polymorfní.

## References

- https://syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/getting-started
- https://riptutorial.com/julia-lang
-
- https://mortenpi.eu/gsoc2019-mockups/bulma/v4/julia/manual/workflow-tips.html