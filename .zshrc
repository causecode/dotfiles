ZSH=$HOME/.oh-my-zsh
source ~/.zshrc-private

#ohymyzsh theme
ZSH_THEME="shaun"

#ohymyzsh plugins
plugins=(git osx gradle lein redis-cli vi-mode)
source $ZSH/oh-my-zsh.sh
setopt NO_BEEP
setopt AUTO_CD
setopt CD_ABLE_VARS

export PATH="/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/share/causecode:/usr/local/mysql/bin:/usr/local/share/android-sdk-macosx/platform-tools:/usr/local/share/android-sdk-macosx/tools:/usr/local/share/mongodb-osx-x86_64-2.4.8/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:~/.gvm/vertx/current/bin:~/.gvm/springboot/current/bin:~/.gvm/lazybones/current/bin:~/.gvm/groovyserv/current/bin:~/.gvm/groovy/current/bin:~/.gvm/griffon/current/bin:~/.gvm/grails/current/bin:~/.gvm/gradle/current/bin:~/.gvm/gaiden/current/bin:/usr/local/share/causecode:/usr/local/mysql/bin:/usr/local/share/android-sdk-macosx/platform-tools:/usr/local/share/android-sdk-macosx/tools:/usr/local/share/mongodb-osx-x86_64-2.4.8/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/local/share/ec2-api-tools-1.6.12.2/bin:/usr/local/share/astyle/build/mac/bin:/usr/local/share/ec2-api-tools-1.6.12.2/bin:/usr/local/share/astyle/build/mac/bin"
export PATH=$PATH:$WORK/shellbox/scripts
export PATH=/usr/local/share/npm/bin:$PATH
# Dash configuration 
# export VIM_APP_DIR=~/Applications

#VI/VIM defaults
#export VIMRUNTIME=~/Applications/MacVim.app/Contents/Resources/vim/runtime
#export EDITOR='~/Applications/MacVim.app/Contents/MacOS/Vim'
#alias vim='~/Applications/MacVim.app/Contents/MacOS/Vim'

export SVN_EDITOR=vim
alias n='vim'

#VI Mode
bindkey -v
bindkey -M main '\C-r' history-incremental-search-backward

#Java/JVM stuff
alias jdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias jdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
export JAVA_OPTS="-Xmx2G -Xms2G -XX:MaxPermSize=512m" 
# -Xms2G -Xmx2G -XX:MaxPermSize=512m -XX:PermSize=512m -XX:NewSize=256m -server -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"
export JAVA_HOME=`/usr/libexec/java_home`


#Project setup
PROJECT_DIR=$HOME/Workspace
#source ~/.otherFunctions
#source ~/.gitFunctions
source ~/.projects
source $WORK/shellbox/aliases.sh
source ~/.aliases
alias V="mvim -c 'cd $CURRENT_PROJECT_DIR'"
alias N="nvim -c 'cd $CURRENT_PROJECT_DIR'"

###############################  Groovy/Grails  ##############################
alias gd='gradle'
function testResults() {
    if [ -e "./application.properties" ]
    then
        open target/test-reports/html/index.html
    else
        open build/reports/tests/index.html
    fi
}

alias results=testResults
#alias cn="open build/reports/codenarc/main.html"

function printClassesInJar() {
    jar tf $1 | grep .class | grep -v '\$' | grep -v 'package-info' | sed s,/,.,g | sed s/.class//g
}

############################### Mysql ###############################
alias mysqlstart='sudo /Library/StartupItems/MySQLCOM/MySQLCOM start'
alias mysqlstop='sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop'

################################ Redis ###############################
alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'

################################ Rabbit ###############################
alias rabbit='sudo /usr/local/Cellar/rabbitmq/2.8.7/sbin/rabbitmq-server'

################################ Git ###############################
#Using scm_breeze shortcuts

# source ~/Workspace/bloom/dev_scripts/bash/git-branch-cleanup.sh
# open all changed files in vim
alias git-changed='mvim -p `git diff --name-only --relative`'
alias bc='git difftool --tool=bc3 -d HEAD~1'

# diff each file in vimdiff using the specified commit
function git-diffall() {
    git diff $1 --name-only --relative | git difftool $1
}
function git-difflistdev() {
    git diff upstream/develop...$1 --name-only
}
function git-diffalldev() {
    git diff upstream/develop...$1 --name-only --relative | git difftool upstream/develop...$1
}

function git-diffpr() {
    git diff upstream/develop...upstream/pr/$1 --name-only --relative | git difftool upstream/develop...upstream/pr/$1
}

#Add pull request branches to upstream fetch
function git-pullify() {
    git config --add remote.upstream.fetch '+refs/pull/*/head:refs/remotes/upstream/pr/*'
}

#SCM Breeze
[ -s "/Users/sjurgemeyer/.scm_breeze/scm_breeze.sh" ] && source "/Users/sjurgemeyer/.scm_breeze/scm_breeze.sh"

################################ Mercurial ###############################
alias hs="hg status -S"
alias hb="hg branch"
alias hgdr=hgdiffrevs

# alias ic="hg incoming -v | lf"
# alias og="hg outgoing -v | lf"

alias hgl="hg sglog -l"
alias hglv="hg sglog -v -l"

alias hgi='hg identify -nibt'
alias hga='hg annotate -un'

# alias icdiff="hg diff --reverse http://hg/direct \$(ic)"
# alias ogdiff="hg diff --reverse http://hg/direct \$(og)"

hgdiffrevs() {
	diff <(hg slog --rev $1:0 --follow) <(hg slog --rev $2:0 --follow)
}

###################### Generic Shell stuff ###########################

# Move up directories more easily
alias bd='. bd -s'

alias dot='cd $PROJECT_DIR/dotfiles'

alias mkdir='mkdir -p' #create intermediate directories
# mkdir and cd
mkcd () { mkdir -p "$@" && cd "$@"; }
alias lla='ll -a' # ll is created by scm breeze

#Easier ZSH history
source $WORK/dotfiles/dependencies/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $WORK/dotfiles/dependencies/zsh-history-substring-search/zsh-history-substring-search.zsh
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

## Friendly find alias
alias ff=ffind
infiles() {
    egrep -ir "$@" .
}

# grep for process
p() {
    ps -el | grep "$@"
}

#TODO.txt
source $WORK/dotfiles/dependencies/todo.txt_cli-2.10/todo_completion

alias t=todo
alias tls='t ls'
alias ta='t add'
alias td='t do'
alias tvp='t view project'
alias tvd='t view date'
alias tvc='t view context'
alias ts='t schedule'
alias te='n /Users/sjurgemeyer/Dropbox/todo/todo.txt'
alias trec 'v /Users/sjurgemeyer/Dropbox/todo/recur.txt'
alias todohelp='echo \
"TODO.txt shortcuts
------------------
tls: List all tasks
ta:  Add a task
td:  Complete a task
tvp: View tasks by project
tvd: View tasks by date
tvc: View tasks by context
ts:  View tasks with specific dates
te:  Edit todo.txt
trec:  Edit recur.txt
"'

function numberOfCurrentTasks() {
    today=`date "+%Y-%m-%d"`
    z=`tls $today | wc -l | sed -e 's/^ *//g' -e 's/ *$//g'`
    echo `expr $z - 2`
}

# complete -F _todo t

# A bash function to display a growl notification using iTerm's magic
# escape sequence. This version will work under screen.

growl() {
      local msg="\\e]9;\n\n${*}\\007"
      case $TERM in
        screen*)
          echo -ne '\eP'${msg}'\e\\' ;;
        *)
          echo -ne ${msg} ;;
      esac
      return
}

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
export VIMCLOJURE_SERVER_JAR="$HOME/Workspace/dotfiles/dependencies/lib/nailgun/server-2.3.6.jar"

#RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7) 
setjdk() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

#docker
#export DOCKER_IP=`boot2docker ip`  
#export DOCKER_HOST=`boot2docker socket`  
#export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
