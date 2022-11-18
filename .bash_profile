#-----------------------------
# Bash Aliases
#-----------------------------

#Initializations
#eval `ssh-agent`
#ssh-add ~/.ssh/git_personal
#ssh-add ~/.ssh/arkkey
#clear


#Commands
alias dk=docker
alias cls=clear
alias window="start ."
#alias gbash="start git-bash"
alias bashreset="source ~/.bash_profile"
alias run-hub="dotnet run --project C:/Git/C#/portal-do-cliente-hub-api/Autoglass.PortalDoClienteHub.API/Autoglass.PortalDoClienteHub.API.csproj"
alias nvm-10="nvm use 10.16.3"
alias nvm-12="nvm use 12.14.0"
alias gu-homo="gulp build-homologacao"
alias gu-prod="gulp build-producao"




# Git
#gc --amend -m
#git log --all --grep='377'
#git checkout --theirs /path/to/file
#git checkout --ours /path/to/file
#git show head --name-only
#rename branch: git branch -m <new_name>

#ng s --o

#grep:
#	Current directory only
#		grep 'word-to-search' *
#
#	All sub directories
#		grep -r 'word-to-search' *


#Aliases
alias g="git"
__git_complete g _git

alias gm="git merge"
__git_complete gm _git_merge

alias gpl="git pull"
__git_complete gpl _git_pull

alias gph="git push"
__git_complete gph _git_push

alias gfh="git fetch"
__git_complete gfh _git_fetch

alias gs="git status"
__git_complete gs _git_status

alias ga="git add"
__git_complete ga _git_add

alias gc="git commit"
__git_complete gc _git_commit

alias gcm="git commit -m"
__git_complete gcm _git_commit

alias gco='git checkout'
__git_complete gco _git_checkout

alias gb='git branch'
__git_complete gb _git_branch

alias gl='git log'
__git_complete gl _git_log

alias gl-b='git log --first-parent --no-merges'
__git_complete gl _git_log

alias gsh='git show'
__git_complete gsh _git_show

alias gst='git stash'
__git_complete gst _git_stash

alias gr-h='git reset --hard'
__git_complete gr-h _git_reset

alias gr-s='git reset --soft'
__git_complete gr-s _git_reset

alias grb='git rebase'
__git_complete grb _git_rebase

alias grb-i='git rebase -i'
__git_complete grb-i _git_rebase

alias gclear='git clean -d -f'
__git_complete gclear git_clean


#Git Functions

function branchup()
{
	git push --set-upstream origin $(git branch --show-current)
}

#Realiza um checkout para a feature B2B com código informado
function gcofet()
{
	$([tab])
}

function functionExemple()
{
	local parameter=$1;
	local comandText=$1;
	
	parameter="docker exec -it "$parameter" //bin//bash";

	#Executa o comando que foi armazenado na variável
	#OBS.: Trava a janela do terminal
	$($comandText);
		
	#Executa o comando direto, sem a necessidade de armazena-lo eem uma variável.
	#OBS.: Trava a janela do terminal
	$(docker exec -it $parameter //bin//bash);
	
	#Coloca a o valor da variável na area de transferência
	echo $comandText| tr -d '\n'|clip.exe;
	#$(docker exec -it $containerID //bin//bash);
	
	#Executa o comando SEM TRAVAR a janela do terminal
	docker exec -it $containerID //bin//bash;
}

function gquick()
{
	local noVerify='';

	if [[ $# > 0 && $1 == 'nv' ]]
	then
		noVerify='--no-verify';
	fi

	ga .
	git commit -m "quick commit $(date)" $noVerify
}


function gwipe()
{
	git reset --hard
	git clean -d -f
}

#
# ---- Docker
#

#
#Link the terminal window to an specific container
#
#Parameters:
#1- Container ID
function dkexec()
{
	docker exec -it $1 //bin//bash;
}


#Start a new container and link the terminal to the container application
#
#Parameters:
#1- Container ID
function dks()
{
	docker start -a -i $1
}


# ---- All Purpuse Functions

function gbash()
{
	start git-bash
	cd pwd
}

function pp()
{
	echo $(pwd)| tr -d '\n'|clip.exe;
}

function fixslash()
{
	local text=${1//'\'/"/"}
	echo $text | tr -d '\n' | clip.exe;
}

function fet()
{
	local text='feature/B2B-';
	text=$text$1;
	echo $text| tr -d '\n'|clip.exe;
}

function upper()
{
	local text=$1;
	echo ${text^^}| tr -d '\n'|clip.exe;
}

function fupper()
{
	local text=$1;
	text=${text,,};
	echo ${text^}| tr -d '\n'|clip.exe;
}

function lower()
{
	local text=$1;
	echo ${text,,}| tr -d '\n'|clip.exe;
}

function email()
{
	local email=''
	
	if [ $1 == "g"  ]
	then	
		email='wagcodias@gmail.com'
	elif [ $1 == "o"  ]
	then
		email='wagco@outlook.com'
	elif [ $1 == "in"  ]
	then
		email='wagner.dias@inmetrics.com.br'
	fi
	
	echo $email| tr -d '\n'|clip.exe;
}


function amb()
{
	local ambiente='';
	
	if [ "$1" = "p" ]
	then
		ambiente='DELTA.WORLD:
		(DESCRIPTION =     (ADDRESS_LIST =       (ADDRESS = (PROTOCOL = TCP)(HOST = oracleprod.autoglass.com.br)(PORT = 1521))     ) 	(ADDRESS_LIST =       (ADDRESS = (PROTOCOL = TCP)(HOST = apia-scan.autoglass.com.br)(PORT = 1521))     ) 	(FAILOVER_MODE = (TYPE = SESSION)(METHOD = BASIC)(RETRIES = 3)(DELAY = 2))     (CONNECT_DATA =       (SERVICE_NAME = TI)       (SERVER = DEDICATED)     )   )';
	fi
	
	echo $ambiente| tr -d '\n'|clip.exe;
}

#Git checkout to B2B Feature

#gcof function()
#{
#	git checkout */B2B-$1
#alias gcof=''
#
#}
#__git_complete gco _git_checkout
#


#Open program Functions

#function lol-apps()
#{
#	
#}


# Programs execution:
alias execalc="C:/Program\ Files/LibreOffice/program/scalc.exe"
alias n++="C:/Program\ Files/Notepad++/notepad++.exe"
alias postman="C:/Users/wagner.colombo/AppData/Local/Postman/Postman.exe"

function bashconfig()
{
	start notepad++
	$(bashconfigfile)
}


# Paths
alias cdgh="cd C:/GitHub"
alias cdgithub="cd C:/GitHub"

alias cdg="cd D:/Git"
alias cdgit="cd D:/Git"

alias cdgu="cd D:/Unity\ Projetcts"
alias cdlayer="cd D:/Unity\ Projetcts/layer"

alias cdkafka="cd D:/Kafka/kafka_2.13-3.1.0"

#alias cdgc="cd C:/Git/C#"
#alias cdgitc="cd C:/Git/C#"
#
#alias cdgng="cd C:/Git/Angular\ JS"
#alias cdgitng="cd C:/Git/Angular\ JS"
#alias cdgng2="cd C:/Git/Angular"
#alias cdgitng2="cd C:/Git/Angular"
#
#alias cdgsql="cd C:/Git/SQL"
#alias cdgitsql="cd C:/Git/SQL"


# Files:
alias dosconfig="notepad++ C:/Users/wagner.colombo/Desktop/My\ Stuff/Config\ Files/DOSKEY/macros.bat"
alias bashconfigfile="notepad++ C:/Users/wagco/.bash_profile"