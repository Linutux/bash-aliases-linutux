###
# .bash_aliases by Linutux
# https://github.com/Linutux/bash-aliases-linutux
###

### Shorten typical commands
alias d='dir'
alias e='gedit'
alias f='firefox'
alias n='nautilus .'
alias r='rails'

alias rcopy='rsync --partial --progress --append -r -h'
alias rmove='rsync --partial --progress --append -r -h –-remove-sent-files'

## Colorize the ls output ##
alias ls='ls --color=auto'
 
## Use a long listing format ##
alias ll='ls -la --color=auto'
 
## Use grep on a long listing format ##
alias llg='ll | grep --color=auto'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
 
## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## make and remove directories ##
alias md='mkdir -p'
alias rd='rmdir'

## Colorize the grep command output for ease of use (good for log files) ##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Generate SSH1 Hash
alias sha1='openssl sha1'

# Show open ports
alias ports='netstat -tulenp'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
## display all rules ##
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

## get web server headers ##
alias header='curl -I'
 
## find out if remote server supports gzip / mod_deflate or not ##
alias headerc='curl -I --compress'

## upgrade via aptitude ##
alias upgrade='sudo aptitude update && sudo aptitude upgrade'

## upgrade via apt-get ##
#alias upgrade="sudo apt-get update && sudo apt-get upgrade"

## remove old kernels via aptitude ##
alias remove-old-kernels="sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"

## remove old kernels via apt-get ##
#alias remove-old-kernels="sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"

## don't use Pubkey-Authentication with SSH ##
alias ssh-nopub='ssh -o PubkeyAuthentication=no'
