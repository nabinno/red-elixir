# Red Elixir --- Elixir in Red

<img src=red-elixir.jpg width=400 /> <sup id="a1">[[1]](#f1)</sup>

## Installation
Configure `hots.red` file:

```sh
> cat hots.red
Red []

hots: context [
    mods: [
        red-elixir #(init: %init.red git: https://github.com/nabinno/red-elixir)
    ]
]

> hot mods/get
```

## Getting Started
Execute a script:

```red
>> do/args %require [red-elixir]

>> 1 .. 10 .[
       |> Series/map i [i * 2]
       |> Series/map i [i + 1]
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
