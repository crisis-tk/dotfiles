;; haml-mode
(require 'haml-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;; sass-mode
(require 'sass-mode nil 't)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
