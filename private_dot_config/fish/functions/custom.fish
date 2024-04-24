# Reload the shell (i.e. invoke as a login shell)
function reload
    exec $SHELL -l
end

# Print each PATH entry on a separate line
function pathls
    string replace : '\n' $PATH
end

