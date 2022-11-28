# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
fzf
dirhistory
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## Custom Settings
# Abrir en VS Code zsh y ohmyzsh
alias codezsh="code ~/.zshrc"
alias codeohmyzsh="code ~/.oh-my-zsh"

# colorls command
alias lc='colorls -lA --sd'
alias lcgit='colorls -lA --sd --gs'
alias lctgit='colorls -lA --sd --tree --gs'
alias lct='colorls -lA --sd --tree'

# Run last command with sudo
alias fuck='sudo $(fc -ln -1)'

# Go back N dirs
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels

# Compression
mktar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }    # Creates a *.tar.gz archive of a file or folder
mkzip() { zip -r "${1%%/}.zip" "$1" ; }               # Create a *.zip archive of a file or folder

# NPM
# npm
alias nrs='npm run start'
alias nrd='npm run dev'
alias nrb='npm run build'
alias ni='npm install'

# Git aliases
alias gs='git status'
alias ga='git add .'
alias greset='git reset --'
alias gc='git commit -m'
alias fusionarConMaster='git checkout master; git merge develop; git checkout develop'
alias gremotes='git remote -v'
alias remotename= 'git remote rename'
alias gb='git branch'
alias go='git checkout'
alias nrama='git checkout -b'
alias gundo='git reset --hard HEAD~1'
alias pmaster='git push origin master'
alias pdev='git push origin dev'
alias newgit='rm -rf .git; git init; git add .;git commit -m "starting project";'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias viewdir='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

monitor_log_file() {
	local logfile
	echo "\nFile name:"
	read logfile
	tail -f $logfile | bat --paging=never -l log
}

# Commit menu command made by zephyr
# COMMIT TEMPLATES
show_options_esp() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Commit inicial 🎉"
	echo "2. Version 🔖"
	echo "3. Nueva funcionalidad ✨"
	echo "4. Arreglando bugs 🐛"
	echo "5. Cambios a la documentación del proyecto 📚"
	echo "6. Cambios a la documentación del código 💡"
	echo "7. Mejora del rendimiento 🐎"
	echo "8. Tests 🚨"
	echo "9. Añadiendo tests ✅"
	echo "10. Test probados ✔️"
	echo "11. Actualización general ⚡️"
	echo "12. Refactorizando el código 🔨"
	echo "13. Eliminando archivos/código 🔥"
	echo "14. Integración continua 💚"
	echo "15. Añadiendo un sistema de integración continua 👷"
	echo "16. Mejoras de seguridad 🔒"
	echo "17. Actualizando dependencias ⬆️"
	echo "18. Desactualizando dependecias ⬇️"
	echo "19. Añadiendo dependencias ➕"
	echo "20. Eliminando dependencias ➖"
	echo "21. Ordenando código 💅"
	echo "22. Fallo crítico 🚑"
	echo "23. Deploying 🚀"
	echo "24. Fixing on MacOS 🍎"
	echo "25. Fixing on Linux 🐧"
	echo "26. Fixing on Windows 🖼"
	echo "27. Docker 🐳"
	echo "28. Archivos de configuración 🔧"
	echo "29. Mal código, necesita revisión 💩"
	echo "30. Cambios inútiles 🍺"
	echo "31. Exit ❌"
}
read_options_esp(){
	local choice
	echo "\nPaso 1."
	echo "Nº del título que desea:"
	read choice
	echo "\nPaso 2."
	echo "Escriba el mensaje del commit:"
	read msg
	case $choice in
		1) tada_esp $msg;;
		2) versiontag_esp $msg;;
		3) newfeature_esp $msg;;
		4) bugfix_esp $msg;;
		5) projectdocu_esp $msg;;
		6) codedocu_esp $msg;;
		7) performance_esp $msg;;
		8) tests_esp $msg;;
		9) addtest_esp $msg;;
		10) testok_esp $msg;;
		11) generalupdate_esp $msg;;
		12) refactor_esp $msg;;
		13) dracarys_esp $msg;;
		14) cintegration_esp $msg;;
		15) cibuildsystem_esp $msg;;
		16) security_esp $msg;;
		17) updependencies_esp $msg;;
		18) downdependencies_esp $msg;;
		19) adddependencies_esp $msg;;
		20) removedependencies_esp $msg;;
		21) style_esp $msg;;
		22) criticalfix_esp $msg;;
		23) deployingstuff_esp $msg;;
		24) fixingmacosx_esp $msg;;
		25) fixinglinux_esp $msg;;
		26) fixingwindows_esp $msg;;
		27) dockerrr_esp $msg;;
		28) configfiles_esp $msg;;
		29) popo_esp $msg;;
		30) uselesss_esp $msg;;
		31) exit 0 ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

commit_menu_esp() {

	show_options_esp
	read_options_esp
}

tada_esp() { git add . && git commit -m "Commit inicial 🎉: $1"}
versiontag_esp() { git add . && git commit -m "Version 🔖: $1"}
newfeature_esp() { git add . && git commit -m "Nueva funcionalidad ✨: $1"}
bugfix_esp() { git add . && git commit -m "Arreglando bugs 🐛: $1"}
projectdocu_esp() { git add . && git commit -m "Cambios a la documentación del proyecto 📚: $1"}
codedocu_esp() { git add . && git commit -m "Cambios a la documentación del código 💡: $1"}
performance_esp() { git add . && git commit -m "Mejora del rendimiento 🐎: $1"}
tests_esp() { git add . && git commit -m "Tests 🚨: $1"}
addtest_esp() { git add . && git commit -m "Añadiendo tests ✅: $1"}
testok_esp() { git add . && git commit -m "Test probados ✔️: $1"}
generalupdate_esp() { git add . && git commit -m "Actualización general ⚡️: $1"}
refactor_esp() { git add . && git commit -m "Refactorizando el código 🔨: $1"}
dracarys_esp() { git add . && git commit -m "Eliminando archivos/código 🔥: $1"}
cintegration_esp() { git add . && git commit -m "Integración continua 💚: $1"}
cibuildsystem_esp() { git add . && git commit -m "Añadiendo un sistema de integración continua 👷: $1"}
security_esp() { git add . && git commit -m "Mejoras de seguridad 🔒: $1"}
updependencies_esp() { git add . && git commit -m "Actualizando dependencias ⬆️: $1"}
downdependencies_esp() { git add . && git commit -m "Desactualizando dependecias ⬇️: $1"}
adddependencies_esp() { git add . && git commit -m "Añadiendo dependencias ➕: $1"}
removedependencies_esp() { git add . && git commit -m "Eliminando dependencias ➖: $1"}
style_esp() { git add . && git commit -m "Ordenando código 💅: $1"}
criticalfix_esp() { git add . && git commit -m "Fallo crítico 🚑: $1"}
deployingstuff_esp() { git add . && git commit -m "Deploying 🚀: $1"}
fixingmacosx_esp() { git add . && git commit -m "Fixing on MacOS 🍎: $1"}
fixinglinux_esp() { git add . && git commit -m "Fixing on Linux 🐧: $1"}
fixingwindows_esp() { git add . && git commit -m "Fixing on Windows 🖼: $1"}
dockerrr_esp() { git add . && git commit -m "Docker 🐳: $1"}
configfiles_esp() { git add . && git commit -m "Archivos de configuración 🔧: $1"}
popo_esp() { git add . && git commit -m "Mal código, necesita revisión 💩: $1"}
uselesss_esp() { git add . && git commit -m "Cambios inútiles 🍺: $1"}


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
