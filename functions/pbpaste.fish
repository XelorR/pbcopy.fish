function pbpaste
    switch (uname -o)
        case GNU/Linux
            fish_clipboard_paste $argv
        case Android
            termux-clipboard-get $argv
        case Darwin
            pbpaste $argv
    end
end
