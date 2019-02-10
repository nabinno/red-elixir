Red []

keyword: ctx [
    get: fn [keywords [series!] 'key [word!]][
        select keywords key
    ]

    keys: fn [keywords [series!]][
		collect [
            foreach [key _] keywords [keep key]
        ]
    ]

    values: fn [keywords [series!]][
		collect [
            foreach [_ value] keywords [keep value]
        ]
    ]
]
