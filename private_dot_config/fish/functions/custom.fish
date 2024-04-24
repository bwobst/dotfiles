# Print each PATH entry on a separate line
function pathls
    string replace : '\n' $PATH
end
