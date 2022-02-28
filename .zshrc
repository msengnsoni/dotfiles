#############
#####基本設定
#############
#文字コードを指定する
export LANG=ja_JP.UTF-8

#日本語ファイル名を表示可能にする
setopt print_eight_bit

#color
export CLICOLOR=1
export TERM=xterm-256color

# 直前のコマンドの重複を削除
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

##########
#####alias
##########
alias diff='colordiff'
alias ll='ls -lah'


############
#####plugin
############
#zsh-autosuggestions
#.zsh_historyから過去に実行したコマンドを検索し補完する
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#zsh-syntax-highlighting
#コマンド入力中に、正常に入力されているか色分けする
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#zsh-completions
#コマンドの自動補完を行う
  if type brew &>/dev/null; then
    FPATH=/usr/local/share/zsh-completions:/usr/local/share/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/5.8/functions

    autoload -Uz compinit
    compinit
  fi

#pureのsetup
autoload -U promptinit; promptinit
prompt pure



