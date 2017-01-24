local current_dir='%~%'
local user_host='%n@%m'

# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
local ret_status="%(?:%{$fg[green]%}➜ :%{$fg[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg[green]%}%p %{$fg[cyan]%}${current_dir}  % %{$reset_color%}'
RPROMPT='%{$fg[white]%}--%{$fg[yellow]%}${user_host}%{$fg[white]%}-- %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# ●
# ■
# ♆
# ➤
