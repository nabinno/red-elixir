Red []

Series: context [
    _alter: :alter
    _append: :append
    _back: :back
    _change: :change
    _clear: :clear
    _collect: :collect
    _compose: :compose
    _copy: :copy
    _empty?: :empty?
    _exclude: :exclude
    _extract: :extract
    _fifth: :fifth
    _find: :find
    _first: :first
    _fourth: :fourth
    _head: :head
    _head?: :head?
    _index?: :index?
    _insert: :insert
    _last: :last
    _length?: :length?
    _move: :move
    _next: :next
    _path!: :path!
    _path?: :path?
    _pick: :pick
    _poke: :poke
    _put: :put
    _rejoin: :rejoin
    _remove: :remove
    _replace: :replace
    _reverse: :reverse
    _second: :second
    _select: :select
    _skip: :skip
    _sort: :sort
    _swap: :swap
    _tail: :tail
    _tail?: :tail?
    _take: :take
    _third: :third
    _union: :union
    _unique: :unique

    compact: func [series][
        collect [foreach s series [if s [keep s]]]
    ]

    compose-deep: func [series][
        compose/deep series
    ]

    each: func [series word body][
        forall series [
            set word series/1
            do bind body word
        ]
        none
    ]

    flatten: func [series][
        blk: []
        foreach s series [append blk s]
    ]

    map: func [series word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        series
    ]

    map-compact: func [series word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        compact series
    ]

    to-string: func [series [series!]][
        form series
    ]
]
