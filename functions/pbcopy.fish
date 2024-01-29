function pbcopy
    if command -v wl-copy &>/dev/null
        wl-copy $argv
    else if command -v xclip &>/dev/null
        xclip -selection clipboard $argv
    else if command -v xsel &>/dev/null
        xsel --clipboard --input $argv
    else if command -v termux-clipboard-set &>/dev/null
        termux-clipboard-set $argv
    else if command -v pbcopy &>/dev/null
        /usr/bin/pbcopy $argv
    end
end
