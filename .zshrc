# ~/.zshrc - Custom ZSH Configuration for Captain Blck2th
# Fetch Weather
WEATHER=$(curl -s 'wttr.in/?format=3' || echo "Weather unavailable")

# Terminal Intro
echo -e "\033[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;36m           ☠️  🏴‍☠️  Captain Blck2th  🏴‍☠️ ☠️ \033[0m"
echo -e "\033[1;33m      🌞 Weather: $WEATHER\033[0m"
echo -e "\033[1;32m      ⏰ Start Time: $(date '+%H:%M:%S')\033[0m"
echo -e "\033[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;31m     🛡️ HP: 150\033[0m"
echo -e "\033[1;31m     ⚡ Mana: 120\033[0m"
echo -e "\033[1;31m     🎯 Critical: 25%\033[0m"
echo -e "\033[1;31m     🔥 Attack: 85\033[0m"
echo -e "\033[1;31m     🌀 Defense: 70\033[0m"
echo -e "\033[1;31m     💎 Luck: 18%\033[0m"
echo -e "\033[1;31m     🧭 Speed: 95\033[0m"
echo -e "\033[1;31m     🎮 Skill: 99\033[0m"
echo -e "\033[1;31m     🌌 EXP: 42,000\033[0m"
echo -e "\033[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;33m   \"I write bugs so strong, they become features later!\"\033[0m"
echo -e "\033[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

# Aliases
alias zfile="vim ~/.zshrc"  # Quickly edit zshrc
alias vfile="vim ~/.vimrc"
alias zsrc="clear; source ~/.zshrc"
alias vsrc="clear; source ~/.vimrc; zsrc"
alias ls="tree -L 1 -p -h -t -C -a"  # List with details
alias gas="git status"      # Git status shortcut
alias gcom="git commit -m"  # Git commit shortcut with message
alias diff="git diff"        # Git diff shortcut
alias diffc="git diff --cached"  # Git diff cached shortcut
alias push="git push"        # Git push shortcut
alias pull="git pull"        # Git pull shortcut
alias pip3="python3 -m pip"  # Shortcut for pip3
# Git Command Aliases
alias gas="git status"           # git status shortcut
alias push="git push"            # git push shortcut
alias pull="git pull"            # git pull shortcut
alias fetch="git fetch"          # git fetch shortcut
alias gcom="git commit -m"       # git commit shortcut with message



# History Settings
HISTSIZE=1000          # Number of commands to remember in history
SAVEHIST=1000          # Number of commands to save in history file
HISTFILE=~/.zsh_history # Location of history file
setopt APPEND_HISTORY  # Append to history instead of overwriting

# Paths
export PATH="/usr/local/bin:$PATH"

# ZSH Options
setopt autocd           # Change directory without typing 'cd'
setopt correct          # Suggest corrections for mistyped commands
setopt globdots         # Include hidden files in globbing
setopt notify           # Notify when background jobs complete

# Enable Syntax Highlighting and Autosuggestions (if installed)
# Uncomment the following lines if you have these plugins installed.
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Custom Functions
function mkcd() {
  mkdir -p "$1" && cd "$1"
}

# ========================
# Curl Aliases
# ========================

# HTTP Utilities
alias curl_status="curl -o /dev/null -s -w '%{http_code}\n'"  # Check HTTP status
alias curl_headers="curl -I"                                  # Fetch headers
alias curl_json="curl -s | jq"                                # Pretty-print JSON

# File Utilities
alias curl_download="curl -O"                                 # Download file
alias curl_save="curl -o"                                     # Save webpage to file

# Networking Utilities
alias curl_ip="curl -s ifconfig.me"                           # Get public IP
alias curl_dns="curl -s https://dns.google/resolve?name="     # Check DNS records

# Miscellaneous
alias curl_api="curl -X GET -H 'Content-Type: application/json'" # Test API endpoints
alias curl_poll="watch -n 5 'curl -I'"                           # Poll URL periodically

function clear_with_message() {
    clear

    # Define the funny debugging messages
    local messages=(
        "Your code doesn’t work, and nobody knows why. Classic."
        "Fix one bug, spawn three. Welcome to Hydra programming."
        "The compiler isn’t angry; it’s disappointed."
        "Errors? Those are just opportunities for creativity."
        "Congratulations, you’ve unlocked a secret level: debugging hell. 🔥"
        "Why does it work? Nobody knows. Don't touch it."
        "Your stack trace called. It wants to know what you're doing with your life."
        "Working as intended... just not your intention."
        "Hope is not a debugging strategy."
        "Test cases are red, code reviews are blue, refactor your logic, or it will haunt you."
        "Debugging is like being the therapist for code. Except, it lies to you."
        "You didn’t break the code; the code broke you."
        "Remember: if debugging is removing bugs, programming must be adding them."
        "Fix one thing, break three. You’re playing 4D chess against yourself."
        "The computer doesn’t hate you—it just doesn’t care about your feelings."
    )
    local random_index=$((RANDOM % ${#messages[@]}))

    # Additional funny outputs
    local bug_count=$((RANDOM % 50 + 1))
    local skill_levels=("Intern Level: Ctrl+C + Ctrl+V Champion" "Junior Dev: Too Many Tabs Open" "Mid-Level Dev: Knows What StackOverflow Is" "Senior Dev: Deletes Half the Code for Fun" "Wizard: Comments Code Just to Confuse Others")
    local skill=${skill_levels[$((RANDOM % ${#skill_levels[@]}))]}
    local moods=("Your code is crying in the corner." "Your codebase smells like spaghetti." "Half your functions think they’re deprecated." "Congratulations! Your code achieved sentience and declared war on you." "All systems nominal... for now.")
    local mood=${moods[$((RANDOM % ${#moods[@]}))]}

    # Print output with demarcation lines
    echo -e "\033[1;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "\033[1;31m${messages[$random_index]}\033[0m"
    echo -e "\033[1;33m🐛 Known Bugs: $bug_count | ✨ Skill Level: $skill\033[0m"
    echo -e "\033[1;36m🧠 Mood: $mood\033[0m"
    echo -e "\033[1;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
}

# Alias the `c` command to call this function
alias c="clear_with_message"

