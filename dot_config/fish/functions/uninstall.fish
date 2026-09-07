function uninstall --wraps='sudo pacman -Rns' --description 'alias uninstall=sudo pacman -Rns'
    sudo pacman -Rns $argv
end
