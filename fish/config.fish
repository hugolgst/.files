
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

export GPG_TTY=(tty)
echo -e "\033]6;1;bg;red;brightness;38\a"
echo -e "\033]6;1;bg;green;brightness;38\a"
echo -e "\033]6;1;bg;blue;brightness;38\a"
clear
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
set PATH $PATH ~/.cargo/bin

set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_pathsrvm default
rvm default

function fish_greeting
    export LC_ALL=en_US.UTF-8  
    export LANG=en_US.UTF-8
    fortune
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hugo/Documents/google-cloud-sdk/path.fish.inc' ]; . '/Users/hugo/Documents/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/opt/bison/bin" $fish_user_paths
