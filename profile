PATH=$PATH:$HOME/.rvm/bin:./node_modules/.bin

alias ll='ls -lh'
alias lla='ls -lah'
alias ..='cd ..'

ulimit -n 1200

export EDITOR=/usr/bin/emacs

# GIT
alias grc='git rebase --continue'
alias stash='git stash'
alias stashl='git stash list'
alias stashp='git stash pop'
alias stashc='git stash clear'

alias clean='find . -name "*~" -exec rm {} \;'

export MANTA_KEY=~/.ssh/id_rsa.joyent
export MANTA_KEY_ID=`ssh-keygen -l -f $MANTA_KEY.pub | awk '{print $2}' | tr -d '\n'`
export MANTA_URL=https://manta-beta.joyentcloud.com/
export MANTA_USER='theproof'

export EC2_HOME='/usr/local/ec2-api-tools-1.6.0.0'
export AWS_ELB_HOME='/usr/local/ElasticLoadBalancing-1.0.17.0'
export AWS_ELASTICACHE_HOME='/usr/local/AmazonElastiCacheCli-1.6.000'
export JAVA_HOME='/usr'
export AWS_RDS_HOME=/usr/local/RDSCli-1.12.001
export AWS_CREDENTIAL_FILE=~/.aws

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

function grepr {
    grep -r $1 * 
}
function grepir {
    grep -ir $1 * 
}
function greplr {
    grep -lr $1 * 
}
function greplir {
    grep -lir $1 * 
}

if [[ -s /Users/jason/.rvm/scripts/rvm ]] ; then source /Users/jason/.rvm/scripts/rvm ; fi
ssh-add ~/.ssh/id_rsa
