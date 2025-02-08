function setscheme
    if test -z "$argv"
        return 1
    end

    if test -f $HOME/fish/colors/$argv[1].fish
        fish $HOME/fish/colors/$argv[1].fish
    end
end
