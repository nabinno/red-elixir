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
]

;-- pipe
.: make op! func [
    "Pipes a value through a succession of expressions as first (|>) argument"
    seed            "Starting value"
    blocks [block!] "Sequence of pipeable instructions"
    /local fn-status
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

;-- range
..: make op! func [min max][
    collect [repeat i (max - min + 1) [keep (i + min - 1)]]
]
