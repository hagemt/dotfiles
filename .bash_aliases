alias add='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias search='sudo aptitude search'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias advance='sudo apt-get dist-upgrade'
alias clean='sudo apt-get clean'
alias lock='cmatrix -as'
alias engage='update && upgrade && clean'
alias c++='ccache c++'
alias cc='ccache cc'
alias g++='ccache g++'
alias gcc='ccache gcc'
alias detect='valgrind --leak-check=full --show-reachable=yes -v'
alias rainbow='export PATH=/opt/gcc-4.6.0/bin:/opt/qt-4.8.1/bin:${PATH}; export LD_LIBRARY_PATH=/opt/gcc-4.6.0/lib:/opt/qt-4.8.1/lib;'
alias ragequit='sudo /sbin/shutdown -r now'
alias trip-up='sudo tripwire --update -r'
alias g='git status'
alias get='git fetch origin --prune'
alias inflict='git push origin HEAD'
alias code='pushd /home/teh/code'
