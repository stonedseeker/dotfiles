if status is-interactive
    # Commands to run in interactive sessions can go here


    # Shell
    set -g fish_prompt_pwd_dir_length 3

    set fish_greeting ""

    # Aliases
    alias ll='exa -lbh --icons --color=auto --group-directories-first'
    alias la='exa -lah --icons --color=auto --group-directories-first'
    alias dev='cd ~/Documents/coding/;ll'
    alias data='cd /mnt/32F6E6CAF6E68D83/'
    alias nv='nvim $1'
    alias cat='bat'
    alias mann='tldr $1'
    alias lvim='/home/vybhv/.local/bin/lvim'
    alias siu "iw dev wlan0 link | grep -o 'tx bitrate: [0-9.]* MBit/s' | cut -d ' ' -f 3 | awk '{printf(\"%.2f MBps\\n\", \$1/8)}'"
    alias kaam "cd /mnt/32F6E6CAF6E68D83/kaam/"
    alias reva "cd /mnt/32F6E6CAF6E68D83/REVA/SEM\ VI/"




    # dotfiles
    # alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

    # Auto Start Commands
    set -x fish_startup_command 'misfortune -o -as && starship init fish | source'

    if set -q fish_startup_command
        eval $fish_startup_command
        set -e fish_startup_command
        export PATH="/home/piyush/go/bin/:$PATH"
    end
end
