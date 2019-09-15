hg_branch() {
    BRANCH=`hg branch 2> /dev/null | awk '{print "(hg:"$1")"}'`
    if [[ $BRANCH == *release* ]]
    then
        BRANCH="\e[31m$BRANCH"
    fi
    if [[ $BRANCH == *default* ]]
    then
        BRANCH="\e[31m$BRANCH"
    fi
    echo -e $BRANCH
}
set_prompt () {
    LastCommandCode=$?
    Color1='\[$(tput setaf 1)\]'
    Color2='\[$(tput setaf 2)\]'
	Color4='\[$(tput setaf 4)\]'
    Reset='\[\e[00m\]'
	VcsBranch=$(__git_ps1 "%s")$(hg_branch)

	if [ ! -z "$VcsBranch" ]; then
		VcsBranch="[$Color2$VcsBranch$Reset] "
	fi

    if [[ $LastCommandCode == 0 ]]; then
		LastCommand=""
	else
        LastCommand="$Color1<$LastCommandCode>$Reset"
    fi

	PS1="$Reset┌──[$Color2\u@\h$Reset] $VcsBranch$LastCommand\n"
	PS1+="├── $Color4\w$Reset \n"
	PS1+="└> $Reset"
}
PROMPT_COMMAND='set_prompt'

