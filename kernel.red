Red []

kernel: context [
    .call: :call
    .comment: :comment
    .extract-boot-args: :extract-boot-args
    .flip-exe-flag: :flip-exe-flag
    .get-env: :get-env
    .halt: :halt
    .quit-return: :quit-return
    .quit: :quit
    .set-env: :set-env
    .source: :source
    .stats: :stats
    .wait: :wait
    .what: :what

    &: :does

    &&: :and

    ||: :or

    ctx: :context

    fn: :func

    pipe: fn [
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

    range: fn [min max][
        collect [repeat i (max - min + 1) [keep (i + min - 1)]]
    ]
    ..: make op! :range
]

.: :kernel/pipe
..: :kernel/range
&: :kernel/&
&&: :kernel/&&
||: :kernel/||
ctx: :kernel/ctx
fn: :kernel/fn
