Red []

kernel: context [
    &&: :and

    ||: :or

    func: :func

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

    range: func [min max][
        collect [repeat i (max - min + 1) [keep (i + min - 1)]]
    ]
]

.: make op! :kernel/pipe
..: make op! :kernel/range
fn: :kernel/func
&&: :kernel/&&
||: :kernel/||
