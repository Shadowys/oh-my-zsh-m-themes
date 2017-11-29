# Oh my git - Theme - Liino

if [[ $EUID -ne 0 ]]; then
  # no root
PROMPT='
%{$fg_no_bold[white]%}%~ $(git_prompt_info)
%{$fg_bold[green]%}• %{$fg_bold[yellow]%}• %{$fg_bold[red]%}• '
RPROMPT='%{$reset_color%} ⌚ %T %{$fg_no_bold[white]%}|%n|%{$reset_color%}'
else
  # root
PROMPT='
%{$fg_no_bold[white]%}%~ $(git_prompt_info)
%{$fg_bold[green]%}• %{$fg_bold[yellow]%}• %{$fg_bold[red]%}• %{$fg_bold[red]%} # '
RPROMPT='%{$reset_color%} ⌚ %T %{$fg_no_bold[red]%}|%n|%{$reset_color%}'
fi


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%} ∿"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"
