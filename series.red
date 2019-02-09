Red []

series: ctx [
    .alter: :alter
    .append: :append
    .at: :at
    .back: :back
    .change: :change
    .clear: :clear
    .clear: :clear
    .collect: :collect
    .compose: :compose
    .copy: :copy
    .empty?: :empty?
    .exclude: :exclude
    .extract: :extract
    .fifth: :fifth
    .find: :find
    .first: :first
    .first: :first
    .fourth: :fourth
    .head: :head
    .head: :head
    .head?: :head?
    .index?: :index?
    .insert: :insert
    .last: :last
    .last: :last
    .length?: :length?
    .move: :move
    .next: :next
    .path!: :path!
    .path?: :path?
    .pick: :pick
    .poke: :poke
    .put: :put
    .rejoin: :rejoin
    .remove: :remove
    .replace: :replace
    .reverse: :reverse
    .second: :second
    .select: :select
    .skip: :skip
    .sort: :sort
    .swap: :swap
    .tail: :tail
    .tail: :tail
    .tail?: :tail?
    .take: :take
    .third: :third
    .union: :union
    .unique: :unique

    each: fn [series 'word body][
        forall series [
            set word series/1
            do bind body word
        ]
        none
    ]

    map: fn [series 'word body][
        forall series [
            set word series/1
            series/1: do bind body word
        ]
        series
    ]
]
