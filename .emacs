;;-------------------------------------------------------------------
;; 基本設定
;;-------------------------------------------------------------------

;; 言語設定
(set-language-environment 'japanese)

;; 文字コード設定
(prefer-coding-system 'utf-8)
(setq default-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)

;; load path
(setq load-path (cons "~/.emacs.d/" load-path))
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; auto-install.el
(add-to-list 'load-path "~/.emacs.d/auto-install")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-compatibility-setup)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; auto-complete を有効化
(require 'auto-complete)
(global-auto-complete-mode t)

;; C-h で BackSpace
(global-set-key "\C-h" 'backward-delete-char)

;; スタートアップページを表示しない
(setq inhibit-startup-message t)

;; ビープ音を消す
(setq visible-bell t)
(setq ring-bell-function 'ignore)


;;-------------------------------------------------------------------
;; アピアランス
;;-------------------------------------------------------------------

;; ウィンドウ設定
(if window-system (progn
  (setq initial-frame-alist '((width . 80) (height . 50) (top . 30)))
  (set-background-color "Black")
  (set-foreground-color "White")
  (set-cursor-color "Gray")

  ;; ツールバー非表示
  (tool-bar-mode -1)

  ;; ウィンドウ透過設定
  (add-to-list 'default-frame-alist '(alpha . (0.8 0.8)))

  ;; 行番号表示
  (require 'linum)
  (global-linum-mode)
))

;; 対応するカッコをハイライト
(show-paren-mode 1)

;; マーク時にハイライト
(setq transient-mark-mode t)
(setq highlight-nonselected-window t)

;; モードライン
(set-face-background 'modeline "RoyalBlue")
(set-face-foreground 'modeline "white")

;; 時間表示
(setq display-time-day-and-date t
      display-time-24hr-format t)
(setq display-time-format "%m/%d(%a) %H:%M")
(display-time)


;;-------------------------------------------------------------------
;; 補完機能
;;-------------------------------------------------------------------

;; 補完機能有効
(setq partial-completion-mode 1)

;; ファイル名補完で大文字小文字を区別しない
(setq completion-ignore-case t)


;;-------------------------------------------------------------------
;; インデント
;;-------------------------------------------------------------------

;; インデント設定
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq indent-line-function 'indent-relative-maybe)

;; 選択範囲をインデント
(global-set-key "\C-x\C-i" 'indent-region)

;; 改行でインデント
(global-set-key "\C-m" 'newline-and-indent)
