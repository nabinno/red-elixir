Red []

kernel: context [
    &&: :and

    ||: :or

    def: func [
        'name [word!]
        spec [block!]
        body [block!]
    ][
        do bind [set name func spec body] 'name
    ]

    fn: :func

    pipe: func [
        "Pipes a value through a succession of expressions as first (|>) argument"
        seed            "Starting value"
        blocks [block!] "Sequence of pipeable instructions"
    ][
        fn-status: 1
        seed: append/only make paren! 1 seed
        foreach blk blocks [
            switch/default blk [
                |> [fn-status: 1 seed: append/only make paren! 3 head seed]
            ][
                switch fn-status [
                    0 [append/only seed blk]
                    1 [insert/only seed blk fn-status: 0]
                ]
            ]
        ]
        do head seed
    ]
    .: make op! :pipe

    range: func [min max][
        collect [repeat i (max - min + 1) [keep (i + min - 1)]]
    ]
    ..: make op! :range
]

.: :kernel/pipe
..: :kernel/range
&&: :kernel/&&
||: :kernel/||
def: :kernel/def
fn: :kernel/fn
