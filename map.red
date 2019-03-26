Red []

Map: context [
    TMP: none

    _clear: :clear
    _extend: :extend
    _keys-of: :keys-of
    _put: :put
    _select: :select
    _values-of: :values-of

    _get: func [map [map!] 'key [word!]][
        select map key
    ]

    keys: func [m [map!]][
        keys-of m
    ]

    to-query-string: func [m [map!]][
        set 'TMP m
        Map/TMP .[
            |> Map/keys
            |> Series/map 'key [rejoin [key "=" select Map/TMP key "&"]]
            |> rejoin
        ]
    ]

    values: func [m [map!]][
        values-of m
    ]
]
