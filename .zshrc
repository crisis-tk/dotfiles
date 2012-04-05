# パスの設定
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PATH=$HOME/bin:$PATH
export MANPATH=/usr/local/share/man:/usr/local/man:/usr/share/man:$MANPATH

# Android SDK 設定
export PATH=/Applications/eclipse37/android-sdk-macosx/tools:$PATH

# Grails 設定
export GRAILS_HOME=/opt/grails-1.3.7
export PATH=$PATH:$GRAILS_HOME/bin

# 文字コード
export LANG=ja_JP.UTF-8


autoload -U colors
colors

# 履歴の設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_space

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# 補完機能拡張
autoload -U compinit
compinit

setopt auto_menu
zstyle ":completion:*:default" menu select=1

# cd で pushd
setopt auto_pushd

# pushd で同じディレクトリを重複して push しない
setopt pushd_ignore_dups

# プロンプト
if [ "$EMACS" ]; then
	export TERM=xterm-color
	PROMPT="%{${fg[cyan]}%}[%n]%% %{${reset_color}%}"
	SPROMPT="%r is correct? [n,y,a,e] "
else
	PROMPT="%{${fg[cyan]}%}[%n]%% %{${reset_color}%}"
	SPROMPT="%r is correct? [n,y,a,e] "
	RPROMPT="%{$fg[green]%}[%~]%{${reset_color}%}"
fi

# スペルチェック
setopt correct

# ls カラー表示
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls="ls -G"

# 補完される前にオリジナルのコマンドまで展開してチェック
setopt complete_aliases

# エディタの指定
export EDITOR=emacs

# エイリアス
alias ll='ls -al'
alias emacs='/usr/local/bin/emacs'
alias vi='vim'
alias history='history -E'

# 全履歴の一覧を出力
function history-all { history -E 1 }

function platex-dvipdfmx-open {
	platex $@.tex
	dvipdfmx $@.dvi
	open $@.pdf
}

function ge {
    /Applications/Emacs.app/Contents/MacOS/Emacs $@ &
}

eval "$(rbenv init -)"
source ~/.rbenv/completions/rbenv.zsh
