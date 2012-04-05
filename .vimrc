syntax on

" vi との互換性をとらない
set nocompatible

" 文字コードの設定
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,euc-jp,cp932,iso-2022-jp

" 行番号を表示
set number

" タブ・インデントの設定
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 対応するカッコをハイライト
set showmatch

" Ruby のインデント設定
au FileType ruby set ts=2 sw=2 expandtab

