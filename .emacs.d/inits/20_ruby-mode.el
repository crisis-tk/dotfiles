;;-------------------------------------------------------------------
;; ruby-mode の設定
;;-------------------------------------------------------------------

(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append
       '(("\\.rb$" . ruby-mode))
       auto-mode-alist))
(setq interpreter-mode-alist
      (append
       '(("ruby" . ruby-mode))
       interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby" "Run on inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))
(add-hook 'ruby-mode-hook
          '(lambda ()
             ;; インデントには tab を使う
             (setq ruby-indent-tabs-mode t)
             ;; インデント幅
             (setq ruby-indent-level 2)))


;; rsense 0.3
(setq rsense-home (expand-file-name "~/.emacs.d/site-lisp/rsense-0.3"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))