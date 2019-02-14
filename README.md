# Red Elixir --- Elixir in Red

<img src=red-elixir.jpg width=400 /> <sup id="a1">[[1]](#f1)</sup>

## Installation
Configure `init.red` file:

```red:init.red
Red []

REDMODULE-PATH: to-red-file rejoin [get-env either equal? system/platform 'Windows ["USERPROFILE"]["HOME"] %/.red/redmodule.red]
unless exists? REDMODULE-PATH [write REDMODULE-PATH read https://raw.githubusercontent.com/nabinno/redmodule/master/redmodule.red]
do/args REDMODULE-PATH system/options/path

redmodule/get [
    red-elixir #(
        name: "Red Elixir"
        init: %init.red
        git: https://github.com/nabinno/red-elixir
    )
]
do-redmodule [red-elixir]
```

## Getting Started
Execute a script:

```red
>> 1 .. 10 .[
       |> series/map i [i * 2]
       |> series/map i [i + 1]
   ]
== [3 5 7 9 11 13 15 17 19 21]
```

---

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## EPILOGUE
>     A whale!
>     Down it goes, and more, and more
>     Up goes its tail!
>
>     -Buson Yosa

---

<b id="f1">[1]</b> "Alchemy: a furnace with some parts removed" (1933, V. Kaliba) credited in Wellcome Collection is licensed by [CC 4.0 BY](https://creativecommons.org/licenses/by/4.0/) [↩](#a1)
