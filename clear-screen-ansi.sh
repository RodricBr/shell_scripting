TERM=xterm-256color

# Terminais modernos herdaram sequências de escape ANSI para recursos "meta".
# São sequências especiais de caracteres que um terminal interpreta como ações em vez de caracteres.

# Modern terminals have inherited ANSI escape sequences for "meta" features.
# These are special sequences of characters that a terminal interprets as actions instead of characters.
$ printf '\033[2J' # Limpa o terminal (CTRL + L) / Clears the terminal


# OBS: Ele não limpa o histórico, ele apenas limpa visualmente o terminal
#     It doesn't clear your history, it only clears visually your terminal


$ dircolors --print-database
$ echo $LS_COLORS | tr ':' '\n'
