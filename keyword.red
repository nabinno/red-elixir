Red []

Keyword: ctx [
    ; @param {series.<key value>} keywords
    get: fn [keywords [series!] 'key [word!]][
        select keywords key
    ]

    ; @param {series.<key value>} keywords
    keys: fn [keywords [series!]][
		collect [
            foreach [key _] keywords [keep key]
        ]
    ]

    ; @param {series.<key value>} keywords
    values: fn [keywords [series!]][
		collect [
            foreach [_ value] keywords [keep value]
        ]
    ]

    ; @param {series.<key: value>} keywords
    to-map: fn [keywords [series!]][
        value: none
        parse keywords: copy keywords [
            some [
                change set value set-word! (reduce ['quote value])
                | skip
            ]
        ]
        make map! reduce keywords
    ]

    ; @param {series.<key: value>} keywords
    to-query-string: fn [keywords [series!]][
        map: Keyword/to-map keywords
        map .[
            |> Map/keys
            |> Series/map key [rejoin [key "=" select map key "&"]]
            |> String/_rejoin
        ]
    ]
]
