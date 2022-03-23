---
title: Programming in Julia
author: David Landa
category: programming
---

# Programming in Julia


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