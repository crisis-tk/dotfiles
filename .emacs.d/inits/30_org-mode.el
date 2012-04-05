;;-------------------------------------------------------------------
;; org-mode の設定
;;-------------------------------------------------------------------

(require 'org-install)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
;;(define-key global-map "\C-cr" 'org-remember)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)

(setq org-hide-leading-stars t)
(setq org-directory "~/org/")
(setq org-default-notes-file "notes.org")

