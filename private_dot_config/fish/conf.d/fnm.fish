
# fnm
set FNM_PATH "/Users/brianwobst/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]
  set PATH "$FNM_PATH" $PATH
  fnm env | source
end
