if test -z "$TMUX"
    set PATH $HOME/.local/bin $PATH

    set    PATH /usr/local/opt/coreutils/libexec/gnubin    $PATH
    set MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
end

set SHELL (which fish)

if status is-interactive
    set fish_greeting        ""
    set fish_escape_delay_ms 300
    set fish_color_command   blue

    set EDITOR nvim
    set VISUAL nvim

    bind ctrl-w        backward-kill-bigword
    bind escape,ctrl-h backward-kill-word
    bind escape,ctrl-b backward-bigword

    # if test -z "$TMUX"
    #     osascript -e 'tell application "System Events"' -e 'set position of first window of application process "kitty" to {232, 67}' -e 'end tell'
    # end
end
