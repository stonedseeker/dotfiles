if status is-interactive
    # Commands to run in interactive sessions can go here


    # Shell
    set -g fish_prompt_pwd_dir_length 3

    set fish_greeting ""

    # Aliases
    alias ll='exa -lbh --icons --color=auto --group-directories-first --sort newest'
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
    alias py /bin/python
    alias dsa "clear & cd /mnt/32F6E6CAF6E68D83/kaam/DSA/leetcode"
    alias mm "free -m | grep Mem | awk '{print $4}'"





    # dotfiles
    # alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    # sudo dd bs=4M if=Win11_23H2_English_x64v2.0.iso of=/dev/sdb status=progress oflag=sync


    # Auto Start Commands
    set -x fish_startup_command 'misfortune -o -as && starship init fish | source | pokeget random --hide-name'
    source ~/.config/fish/functions/base16-shades-of-purple.fish

    if set -q fish_startup_command
        eval $fish_startup_command
        set -e fish_startup_command
        #export PATH="/home/piyush/go/bin/:$PATH"
        export PATH="/home/vybhv/.local/bin/:$PATH"
        set -x PATH /opt/cuda/bin $PATH
        set -x LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
        set -x CUDA_HOME /opt/cuda


        # Add CUDA binaries to the PATH
        set -x PATH $CUDA_HOME/bin $PATH

        # Add CUDA libraries to the LD_LIBRARY_PATH
        set -x LD_LIBRARY_PATH $CUDA_HOME/lib64 $LD_LIBRARY_PATH


        # ~/.config/fish/config.fish

        # Set CUDA_HOME to the CUDA installation directory
        set -x CUDA_HOME /opt/cuda

        # Add CUDA binaries to the PATH
        set -x PATH $CUDA_HOME/bin $PATH

        # Add CUDA libraries to the LD_LIBRARY_PATH
        set -x LD_LIBRARY_PATH $CUDA_HOME/lib64 $LD_LIBRARY_PATH

        # Set CUDNN environment variable if needed
        set -x CUDNN_HOME /usr/local/cuda

        # Add cuDNN libraries to the LD_LIBRARY_PATH
        set -x LD_LIBRARY_PATH $CUDNN_HOME/lib64 $LD_LIBRARY_PATH

        # Use GPU 0
        set -x CUDA_VISIBLE_DEVICES 0

        # Enable CUDA_LAUNCH_BLOCKING for debugging
        set -x CUDA_LAUNCH_BLOCKING 1

        set -x PATH /mnt/32F6E6CAF6E68D83/Downloads/apache-maven-3.8.6-bin/apache-maven-3.8.6/bin $PATH
        set -x PATH /usr/lib/jvm/default/bin $PATH

        function sexy
            echo "True That"
        end

    end
end
eval (/home/vybhv/miniconda3/bin/conda shell.fish hook)
source ~/miniconda3/etc/fish/conf.d/conda.fish
