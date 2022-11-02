if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "Welcome earthling..."

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias g git
command -qv nvim && alias vim nvim

if type -q exa
    alias ls=exa
    alias ll="exa -alh --icons"
    alias tree="exa --tree"
end

if type -q bat
    alias cat="bat"
end

if type -q rg
    alias search="rg"
end

set -gx EDITOR nvim

switch (uname)
    case Darwin
        # do things for macOS
        set -gx SHELL /opt/homebrew/bin/fish
        set -gx PATH /opt/homebrew/bin $PATH
        source /opt/homebrew/opt/asdf/libexec/asdf.fish
        source ~/.config/fish/config-osx.fish
    case Linux
        # do things for Linux
        set -gx SHELL /usr/bin/fish
        source ~/.config/fish/config-linux.fish
        source /opt/asdf-vm/asdf.fish
    case '*'
        # do things for other OSs
end

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end


# local config which is not checked in.

set LOCAL_CONFIG ~/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

# rbenv
if type -q rbenv
    rbenv init - | source
end
