# Reload the shell (i.e. invoke as a login shell)
function reload
    exec $SHELL -l
end

function pathls
    string replace : '\n' $PATH
end

