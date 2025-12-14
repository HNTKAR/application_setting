#< my bash setting #####
stty stop undef
stty start undef

mkdir -p $HOME/.bin

export PATH=$HOME/.bin:$PATH
export EDITOR=nvim
export LC_ALL=ja_JP.UTF-8

PS1="\[\e[32m\](\h)\[\e[33m\]\w>\[\e[0m\] "
HISTCONTROL=ignorespace

alias vim="nvim"

if [[ -z $BASHRC_DIR ]]; then
    if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
            if [ -f "$rc" ]; then
                . "$rc"
            fi
        done
        unset rc
    fi
fi
#> my bash setting #####
