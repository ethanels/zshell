# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up prompt
setopt PROMPT_SUBST
PROMPT='%F{041}%n%f in %F{031}%~%f %{$fg_bold[white]%}$%{$reset_color%} '
# Set Right Prompt with git branch info
RPROMPT=\$vcs_info_msg_0_

# Format the git branch name in the prompt
zstyle ':vcs_info:git:*' formats '%F{011}ᚬ %b%f'

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /Users/ethanelsbecker/.terraform.versions/terraform_0.11.14 terraform_0.11.14

# Install Ruby Gems to ~/gems ruby is installed with Homebrew
export GEM_HOME=$HOME/gems
export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="/usr/local/opt/ruby@2.7/bin:$PATH"

# Switch between package version installed with Homebrew
alias node16='export PATH="/usr/local/opt/node@16/bin:$PATH"'
alias node14='export PATH="/usr/local/opt/node@14/bin:$PATH"'
alias node10='export PATH="/usr/local/opt/node@10/bin:$PATH"'
alias tf-docs='export PATH="/usr/local/opt/terraform-docs/bin:$PATH"'
alias tf-docs11.2='export PATH="/usr/local/opt/terraform-docs@0.11.2/bin:$PATH"'
