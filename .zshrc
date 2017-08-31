source .antigen/antigen.zsh

#ZSH_THEME="spaceship"
#HYPHEN_INSENSITIVE="true"
#ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_USER_SHOW=true

antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

files=( "path" "aliases" "prompt" "exports" "functions" )
for file in "${files[@]}"; do
    [ -r "$HOME/.shell-$file" ] && [ -f "$HOME/.shell-$file" ] && source "$HOME/.shell-$file";
done

antigen apply
