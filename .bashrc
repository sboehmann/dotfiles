# wayland
export XDG_RUNTIME_DIR=/tmp/.runtime-${USER}
mkdir -p "${XDG_RUNTIME_DIR}"
chmod 0700 "${XDG_RUNTIME_DIR}"

export XDG_DESKTOP_DIR="$HOME/Desktop"

export GOROOT=/usr/lib/go
export GOPATH=${HOME}/.go:${HOME}/repos/go
export PATH=$PATH:${HOME}/.local/bin:${HOME}/.go/bin/:/usr/pkg/tool/linux_amd64:${HOME}/.cargo/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib
export EIX_LIMIT_COMPACT=0

test -r ~/.shell-aliases && source ~/.shell-aliases
