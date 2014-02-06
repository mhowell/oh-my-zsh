function fast_git() {
            ref=$(git symbolic-ref HEAD) 2> /dev/null
            if [ "${ref}" != "" ]; then
                        echo git:${ref#refs/heads/}
            fi
}

PROMPT='[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} :%{$fg_bold[green]%}%p %{$fg[cyan]%}%~ %{$reset_color%}] 
%{$fg_bold[red]%}➜ %{$reset_color%}'

RPROMPT='%{$fg_bold[blue]%} $(fast_git) %{${fg_bold[green]}%}%T%{${reset_color}%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔ %{$reset_color%}"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:(%{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔ %{$reset_color%}"
