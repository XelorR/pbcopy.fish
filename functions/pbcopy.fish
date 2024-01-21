function pbcopy
    switch (uname -o)
        case GNU/Linux
            fish_clipboard_copy $argv
        case Android
            termux-clipboard-set $argv
        case Darwin
            pbcopy $argv
    end
end
