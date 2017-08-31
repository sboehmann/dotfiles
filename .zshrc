files=( "path" "aliases" "prompt" "exports" "functions" )
for file in "${files[@]}"; do
	[ -r ".shell-$file" ] && [ -f ".shell-$file" ] && source ".shell-$file";
done

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh

