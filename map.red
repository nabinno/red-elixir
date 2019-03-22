Red []

Map: ctx [
    TMP: none

    _clear: :clear
    _extend: :extend
    _keys-of: :keys-of
    _put: :put
    _select: :select
    _values-of: :values-of

    get: fn [map [map!] 'key [word!]][
        select map key
    ]

    keys: :keys-of

    to-query-string: fn [m [map!]][
        set 'TMP m
        Map/TMP .[
            |> Map/keys
            |> Series/map key [rejoin [key "=" select Map/TMP key "&"]]
            |> String/_rejoin
        ]
    ]

    values: :values-of
]
