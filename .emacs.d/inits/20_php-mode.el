;;-----------------------------------------------------------------------
;; php-mode.el の設定
;;-----------------------------------------------------------------------

(autoload 'php-mode "php-mode" "PHP mode" t)

(setq auto-mode-alist
      (cons '("\\.\\(php\\|php5\\|inc\\)$" . php-mode) auto-mode-alist))
(add-hook 'php-mode-hook
          '(lambda ()
             (setq php-intelligent-tab nil)
             (setq intelligent-tab nil)
             (setq indent-tabs-mode t)
             (setq c-basic-offset 2)
             (setq tab-width 2)
             ) t)
