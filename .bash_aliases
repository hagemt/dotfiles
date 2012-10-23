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
# Java
alias java8='~/Downloads/Code/jdk1.8.0/bin/java'
alias timer='java -cp ~/.workspace/Timer/bin edu.rpi.rcos.tools.JTimer'
# Mathematics
alias maple='/opt/maple/bin/xmaple'
alias matlab='/opt/matlab/bin/matlab'
# Minecraft
alias minecraft='java -Xms1G -Xmx2G -cp ~/.minecraft/minecraft.jar net.minecraft.LauncherFrame'
# Networking
alias poderosa='~/Downloads/Work/networking/scripts/multi_connect.sh'
# Programming Languages
alias oz='linux32 ~/Downloads/Work/proglang/hw2/mozart/bin/oz'
alias salsac='java -cp ~/.workspace/salsa1.1.4.jar:. salsac.SalsaCompiler'
alias javacs='javac -cp ~/.workspace/salsa1.1.4.jar:.'
alias salsa='java -cp ~/.workspace/salsa1.1.4.jar:.'
