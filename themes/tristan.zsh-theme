function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo λ; fi
}

PROMPT='%{$fg_bold[blue]%}[%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~)]
%{$fg[brmagenta]%}(%*) %{$reset_color%}$(git_prompt_info)%_$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
ZSH_THEME_GIT_PROMPT_DIRTY=" ⚡"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="↓"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="↑"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="↕"