# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the optional dotfiles that may or may not be present
for file in ~/._{path,bash_prompt,exports,local_exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set up autocompletion (requires bash-completion be installed)
if which brew > /dev/null && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
