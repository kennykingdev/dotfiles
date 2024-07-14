if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr -a cd z
    abbr -a v nvim
    abbr -a cs "sudo checkservices"
    abbr -a pn pnpm
    abbr -a cz chezmoi
    abbr -a dcu "docker compose up"
    abbr -a dcd "docker compose down"

    # Use eza instead of ls
    alias ls "eza --icons --color=always --group-directories-first"
    alias ll "eza -alF --icons --color=always --group-directories-first"
    alias la "eza -a --icons --color=always --group-directories-first"
    alias l "eza -F --icons --color=always --group-directories-first"

    set -gx EDITOR nvim

    set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

    # zoxide vars
    set -gx _ZO_ECHO 1
    set -gx _ZO_EXCLUDE_DIRS "$HOME: $HOME/.private/*"

    # pnpm
    export PNPM_HOME="/home/kenny/.local/share/pnpm"

    starship init fish | source
    zoxide init fish | source
end

fish_add_path ~/.cargo/bin
