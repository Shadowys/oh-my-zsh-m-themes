# Symbols
: ${is_a_git_repo_symbol:='★'}
: ${has_untracked_files_symbol:='∿'}
: ${has_adds_symbol:='+'}
: ${has_deletions_symbol:='-'}
: ${has_deletions_cached_symbol:='✖'}
: ${has_modifications_symbol:='✎'}
: ${has_modifications_cached_symbol:='☲'}
: ${ready_to_commit_symbol:='→'}
: ${is_on_a_tag_symbol:='⌫'}
: ${needs_to_merge_symbol:='ᄉ'}
: ${has_upstream_symbol:='⇅'}
: ${detached_symbol:='⚯ '}
: ${can_fast_forward_symbol:='»'}
: ${has_diverged_symbol:='Ⴤ'}
: ${rebase_tracking_branch_symbol:='↶'}
: ${merge_tracking_branch_symbol:='ᄉ'}
: ${should_push_symbol:='↑'}
: ${has_stashes_symbol:='★'}


# Flags
: ${display_has_upstream:=false}
: ${display_tag:=false}
: ${display_tag_name:=true}
: ${two_lines:=false}
: ${finally:=''}
: ${use_color_off:=false}


#load colors
autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}' #wrap colours between %{ %} to avoid weird gaps in autocomplete
eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'


on=$WHITE
off=$WHITE
red=$RED
green=$GREEN
yellow=$YELLOW
violet=$CYAN
branch_color=$BLUE
black=$BLACK
reset=$RESET


if [[ $EUID -ne 0 ]]; then
  # no root
PROMPT='
$(build_prompt)
%{$fg_no_bold[blue]%}%~
%{$fg[cyan]%}❯ $ '
RPROMPT='%{$reset_color%} ⌚ %T %{$fg_no_bold[black]%}|%n @ %m|%{$reset_color%}'
else
  # root
PROMPT='
$(build_prompt)
%{$fg_no_bold[blue]%}%~
%{$fg_bold[red]%}❯ # '
RPROMPT='%{$reset_color%} ⌚ %T %{$fg_no_bold[red]%}|%n @ %m|%{$reset_color%}'
fi