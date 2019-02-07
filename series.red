Red []

series: context [
    map: func [series 'word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        series
    ]

    each: func [series 'word body][
        forall series [
            set word series/1
            do bind body word
        ]
        none
    ]
]
