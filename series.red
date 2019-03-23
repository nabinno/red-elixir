Red []

Series: ctx [
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

    compact: fn [series][
        collect [foreach s series [if s [keep s]]]
    ]

    compose-deep: fn [series][
        _compose/deep series
    ]

    each: fn [series 'word body][
        forall series [
            set word series/1
            do bind body word
        ]
        none
    ]

    flatten: fn [series][
        blk: []
        foreach s series [append blk s]
    ]

    map: fn [series 'word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        series
    ]

    map-compact: fn [series 'word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        compact series
    ]

    to-string: fn [series [series!]][
        form series
    ]
]

~c: :Series/compose-deep
