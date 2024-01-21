function open
    switch (uname -o)
        case GNU/Linux
            xdg-open $argv
        case Android
            termux-open $argv
        case Darwin
            open $argv
    end
end
