Red []

map: ctx [
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

    to-query-string: fn [map [map!]][
        map .[
            |> map/keys
            |> series/map key [rejoin [key "=" select map key "&"]]
            |> string/_rejoin
        ]
    ]

    values: :values-of
]
