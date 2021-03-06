Red []

File: context [
    _change-dir: :change-dir
    _clean-path: :clean-path
    _delete: :delete
    _dir?: :dir?
    _dirize: :dirize
    _exists?: :exists?
    _file?: :file?
    _get-current-dir: :get-current-dir
    _load: :load
    _make-dir: :make-dir
    _read: :read
    _save: :save
    _set-current-dir: :set-current-dir
    _size?: :size?
    _split-path: :split-path
    _to-local-file: :to-local-file
    _what-dir: :what-dir
    _write: :write

    mkdir: func [dir-path][
        make-dir dir-path
    ]

    mkdir-p: func [dir-path [path!]][
        make-dir/deep dir-path
    ]
]
