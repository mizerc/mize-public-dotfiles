# ----------------
# MIZE OH-MY-ZSH THEME, MIZE, SEP_2025
# PUT FILE AT: ~/.oh-my-zsh/themes/mize-ohmyzsh-theme.zsh-theme
# ----------------
# START
# ----------------
# COLOR PALLETE VARS
# ----------------
COLOR_RESET='%{$reset_color%}'
COLOR_BLACK='%{$fg[black]%}'
COLOR_RED='%{$fg[red]%}'
COLOR_GREEN='%{$fg[green]%}'
COLOR_YELLOW='%{$fg[yellow]%}'
COLOR_BLUE='%{$fg[blue]%}'
COLOR_MAGENTA='%{$fg[magenta]%}'
COLOR_CYAN='%{$fg[cyan]%}'
COLOR_WHILE='%{$fg[white]%}'
# ----------------
# BOLD COLOR
# ----------------
COLOR_BOLD_BLUE='%{$fg_bold[blue]%}'
# ----------------
# OVERWRITE OH-MY-ZSH GIT VARS
# ----------------
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
# ----------------
# FUNCTIONS
# ----------------
function f_is_root {
    [ $UID -eq 0 ]
}
# IS_ROOT=`[ $UID -eq 0 ]`
function f_prompt_char {
	# if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
	# if [ $UID -eq 0 ]; then
	if f_is_root; then
		echo "%{$fg[red]%}#%{$reset_color%}";
	else
		 echo $;
	fi
}
# ----------------
# ZSH EXTRACTED VARS
# ----------------
# ZSH_THEME_TERM_TITLE_IDLE="%~"
ZSH_USERNAME='%n'
ZSH_HOSTNAME='%m'
ZSH_CURRENTDIR='%~'
ZSH_TIMERAW='%*'
# ? refers to the exit status of the previous command
ZSH_LASTCMD_STATUS='?'
ZSH_GITSTATUS='$(git_prompt_info)'
ZSH_PROMPT_CHAR='$(f_prompt_char)'
# ----------------
# PROMPT TEXT PARTS
# ----------------
T_USERNAME="${COLOR_YELLOW}${ZSH_USERNAME}${COLOR_RESET}"
T_DIR="${COLOR_BLUE}${ZSH_CURRENTDIR}${COLOR_RESET}"
T_GITSTATUS="${COLOR_CYAN}${ZSH_GITSTATUS}${COLOR_RESET}"
T_TIME="${COLOR_YELLOW}${ZSH_TIMERAW}${COLOR_RESET}"
T_PROMPTCHAR="${COLOR_RED}${ZSH_PROMPT_CHAR}${COLOR_RESET}"
OK_TEXT="${COLOR_GREEN}[OK]${COLOR_RESET}"
ERROR_TEXT="${COLOR_RED}[FAIL]${COLOR_RESET}"
T_ERRORSTATUS="%(${ZSH_LASTCMD_STATUS},${OK_TEXT},${ERROR_TEXT})"
# ----------------
# OVERWRITE ZSH PROMPT DEFINITION VARS
# ----------------
PROMPT="${T_USERNAME} ${T_DIR} ${T_GITSTATUS}
${T_PROMPTCHAR} "
# ----------------
RPROMPT="${T_ERRORSTATUS}"
# ----------------
# END
# ----------------
