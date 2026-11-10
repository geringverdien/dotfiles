source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

fish_add_path /home/eli/.spicetify


starship init fish | source
set -gx PATH "$HOME/.local/bin" $PATH
fnm env --use-on-cd | source
set -gx EDITOR nvim
set -gx VISUAL code

function history
    switch "$argv[1]"
        case clear delete merge save search
            builtin history $argv
        case '*'
            builtin history --show-time='%F %T ' $argv
    end
end
