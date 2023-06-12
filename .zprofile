export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$HOME/bin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:$HOME/Android-SDK/tools:$HOME/.cargo/bin:$HOME/.go/bin:$PATH"
eval "$(pyenv init --path)"

export GOPATH="$HOME/.go"
export ANDROID_HOME="$HOME/Android-SDK"

export EDITOR='vim'
export VISUAL='helix'
export REACT_EDITOR='gnome-text-editor'

# less syntax highlighting
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
