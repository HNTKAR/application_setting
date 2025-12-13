#< my tmux setting #####
if [ -z $TMUX ];then
        if [ $(pgrep tmux |wc -l) -eq 0 ]; then
                tmux
        elif [ t$TERM_PROGRAM != "tvscode" ]; then
                tmux a
        fi
fi
#> my tmux setting #####
