Red []

Kernel: context [
    _call: :call
    _comment: :comment
    _extract-boot-args: :extract-boot-args
    _flip-exe-flag: :flip-exe-flag
    _get-env: :get-env
    _halt: :halt
    _quit-return: :quit-return
    _quit: :quit
    _set-env: :set-env
    _source: :source
    _stats: :stats
    _wait: :wait
    _what: :what

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
                none [fn-status: 1 seed: append/only make paren! 3 head seed]
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

.: :kernel/.
..: :kernel/..
&: :kernel/&
&&: :kernel/&&
||: :kernel/||
ctx: :kernel/ctx
fn: :kernel/fn
