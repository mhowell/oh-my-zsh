vcs_status() {
    if [[ ( $(whence in_svn) != "" ) && ( $(in_svn) == 1 ) ]]; then
        svn_prompt_info
    else
        git_prompt_info
    fi
}


PROMPT='[%n@%m :%{$fg_bold[green]%}%p %{$fg[cyan]%}%~ %{$reset_color%}] 
%{$fg_bold[red]%}➜ %{$reset_color%}'
RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}$(svn_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔ %{$reset_color%}"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:(%{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔ %{$reset_color%}"
