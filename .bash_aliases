alias idle='/home/sagiv/bin/idle.py -s &'
function label () { echo -ne "\x1B]0;$*\a"; }
function say () { echo $* | festival --tts; }
alias local_easy_install="easy_install -d $HOME/work/python -s $HOME/bin"
alias updisp="export DISPLAY=`echo $SSH_CLIENT | awk {'print $1'}`:0.0"

function lsw()
{
 ls -lah `which $*`
}
function lw () { less `which $*`; }
function from() { git grep -i --color $1 | grep -oE "from.*" | grep import | sort | uniq ; }
function def() { git grep -i --color $1 | grep -E "(class|def) | grep -v html" ; }
function ss() { ssh deb0$1.att$2.us.intucell.net; }
function ren() { for f in `find . -name '*$1'`; do mv $f `echo $f | sed -e 's/$1/$2/g'` ; done; }
alias venv='. /intucell/latest/bin/activate'
alias class=def
alias title=label
alias grepi='\grep --color'
alias grep='grep -i --color'
alias threads='ps -emo %cpu,pid,tid,user,arg'
alias psall='ps -ef | grep -E "(mong|zoo|intuc|java|son)" | grep -v vim'
alias psallnum="psall | tr -s ' ' | cut -d ' ' -f 3 | tr '\n' ' '"
alias clnpyc='find . -name "*.pyc" -delete'
alias start='/intucell/latest/bin/son_start --root /intucell/data'
alias ip='/intucell/latest/bin/ipython'
alias sp='python ~/ishells/with_store.py'

alias ggi='git grep --color'
alias gg='git grep -i --color'
alias gs='git status'
alias gf='git fetch'
alias gpr='git pull --rebase'
alias gbl='git blame HEAD'
alias gsu='git submodule update --init'
alias grso='git remote show origin'

# git aliases
alias gc='git checkout'
alias gd='git diff'
alias gl='git log'
alias gb='git branch'
alias glaviv='git log --author=aviv'
#gitalias glaviv 'git log --author=aviv'

alias cdn='cd ~/dev/inturms'
alias cdo='cd ~/dev/old_inturms'
alias nosecover='nosetests --with-coverage --cover-html --cover-html-dir=/tmp/coverage'
alias nosepudb='nosetests -sx --pudb-failure --pudb'


alias crmongo1="curl -H 'Content-type: application/json' -X POST -d '[{"server_id":"1", "port":30000}]' http://localhost:5000/api/v1/system/store/configs/"
alias crmongo2="curl -H 'Content-type: application/json' -X POST -d '{"port": 22000, "role": "master"}' http://localhost:5000/api/v1/system/store/region/default/default1/1/"

