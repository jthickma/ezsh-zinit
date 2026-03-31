# This my personal zshrc configs. Feel free to use it and modify according to your needs
# Place all your .zshrc configurations (including this one) in a single or multiple files under ~/.config/ezsh/zshrc/ folder

# Additional zinit plugins to load
zinit snippet OMZP::lol
zinit snippet OMZP::httpie
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::pyenv
zinit snippet OMZP::pip

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status command_execution_time background_jobs todo ram load rvm time)

# Custom Aliases, add your personal aliases here
