## apt-get
alias add='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias search='sudo aptitude search'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias advance='sudo apt-get dist-upgrade'
alias clean='sudo apt-get clean'
alias engage='update && upgrade && clean'
## ccache
alias c++='ccache c++'
alias cc='ccache cc'
alias g++='ccache g++'
alias gcc='ccache gcc'
## dev
alias lock='cmatrix -as'
alias detect='valgrind --leak-check=full --show-reachable=yes -v'
alias ragequit='sudo /sbin/shutdown -r now'
alias g='git status'
alias get='git fetch origin --prune'
alias inflict='git push origin'
