Red []

;-- Series/compose-deep
~c: func [series][
    compose/deep series
]

;-- Keyword/to-map
~m: function [keywords [series!]][
    value: none
    parse keywords: copy keywords [
        some [
            change set value set-word! (reduce ['quote value])
            | skip
        ]
    ]
    make map! reduce keywords
]
