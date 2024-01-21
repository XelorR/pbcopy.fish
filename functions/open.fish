function open
    switch (uname -o)
        case Android
            termux-open $argv
            # fish default command handles well Macos and GNU/Linux
            # so we need to handle Termux (Android) only
            # https://fishshell.com/docs/current/cmds/open.html
        case '*'
            open $argv
    end
end
