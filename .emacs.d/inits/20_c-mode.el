;;-------------------------------------------------------------------
;; c-mode, c++-mode の設定
;;-------------------------------------------------------------------

(add-hook 'c-mode-common-hook
          '(lambda()
             ;; インデント幅
             (setq c-basic-offset 4)
             ;; C-c c で compile コマンドを呼び出す
             (define-key mode-specific-map "¥C-cc" 'compile)))
(setq auto-mode-alist
      ;; 拡張子とモードの対応
      (append
       '(("\\.c$" . c-mode))
       '(("\\.h$" . c-mode))
       '(("\\.cpp$" . c++mode))
       auto-mode-alist))
