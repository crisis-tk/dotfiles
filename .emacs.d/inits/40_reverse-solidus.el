;;---------------------------------------------------------------------
;; バックスラッシュを入力できるようにする。
;; 参考 : http://www.moreslowly.jp/mw/index.php?title=Carbon_Emacs
;;---------------------------------------------------------------------

(define-key global-map [165] nil)
(define-key global-map [67109029] nil)
(define-key global-map [134217893] nil)
(define-key global-map [201326757] nil)
(define-key function-key-map [165] [?\\])
(define-key function-key-map [67109029] [?\C-\\])
(define-key function-key-map [134217893] [?\M-\\])
(define-key function-key-map [201326757] [?\C-\M-\\])