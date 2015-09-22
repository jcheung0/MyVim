
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/jcheung/.gvm/bin/gvm-init.sh" ]] && source "/Users/jcheung/.gvm/bin/gvm-init.sh"


export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#set shell=bash

setup_alias(){
    alias vmssh='ssh johnson@localhost -p 3222'
    #fonality alias
    alias umetk='ssh-add -e /usr/local/lib/libaetpkss.dylib'
    alias metk='ssh-add -s /usr/local/lib/libaetpkss.dylib'
    alias webdev2='ssh -A web-dev2.fonality.com'
    alias devbox5='ssh -A devbox5.lotsofclouds.fonality.com'
    alias fontech='ssh -A tech.fonality.com'
    #VBOX Alias
    alias vbh='VBoxHeadless'
    alias start_eclim='~/Dev/eclipse/eclimd -b'  
    
    alias update_vimrc='vim ~/Dev/Projects/vimcfg/vimrc'
    alias fonrepo='cd ~/Dev/Work/Fonality/repos'
    alias mg='mongod --fork --logpath ~/Dev/Logs --dbpath ~/Dev/data/db'
    alias mgstop='mongod --shutdown'
    alias numerow='cd ~/Dev/Work/NumeroUsa'
    alias unitproj='cd ~/Dev/Projects/Unity'
    alias cb='couchbase-cli'
    alias fondb='mysql -h dev-db.lotsofclouds.fonality.com -ufonality -piNOcallU fcs'
    alias androiddir='open ~/android-sdk'
    alias swig2.0='swig'
    alias proj='cd ~/Dev/Projects/'
    alias ngr='ngrok -authtoken taQ5tHpe2y32P6jSj7FH'
    alias jcserver="ssh core@162.243.139.242"
    alias hidef="defaults write com.apple.finder AppleShowAllFiles"
    alias vg="~/Dev/Projects/github/vagrant/bin/vagrant"
    alias pipupgrade="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs sudo pip install --upgrade"
    alias fuck='eval $( thefuck $( fc -ln -1)); history -r'
    # You can use whatever you want as an alias, like for Mondays:
    alias FUCK='fuck'
}


setup_alias

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!

source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

      
setup_path(){
    export ANDROID_NDK_ROOT=$HOME/android-ndk-r9d
    export ANDROID_HOME=$HOME/android-sdks
    export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
    #export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk
    #export DOCKER_HOST=tcp://localhost:2375
    #export DOCKER_HOST=tcp://192.168.59.104:2376
    export DOCKER_CERT_PATH=/Users/jcheung/.boot2docker/certs/boot2docker-vm
    #export DOCKER_TLS_VERIFY=1
    export PATH=$HOME/Dev/tar-installs/vert.x-2.1.2/bin:$PATH
        #export PATH=/Applications/CouchbaseServer.app/Contents/Resources/couchbase-core/bin:$PATH
    export PATH=$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH
    export PATH=$PATH:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools:$HOME/android-ndk-r9d:
    export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS
    export FON_DIR=$HOME/vagrant_dir/fcs
    export PATH=$PATH:/usr/local/sbin
    export PATH=$PATH:/Applications/Julia-0.3.8.app/Contents/Resources/julia/bin
    export GOPATH=$HOME/Dev/go
    export PATH=$PATH:/$GOPATH/bin
    export PKG_CONFIG_PATH=$(brew --prefix python3)/Frameworks/Python.framework/Versions/3.4/lib/pkgconfig
    export PATH=$PATH:/Users/jcheung/android-sdks/build-tools/21.1.2
    export PATH=$PATH:$HOME/Dev/bin  #${GOPATH//://bin:}/bin
    #export PATH=$PATH:"/Applications/Couchbase Server.app/Contents/Resources/couchbase-core/bin"
    export PATH=$PATH:~/bin
} 

code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

setup_path
source dnvm.sh


#Include IDE Integration for Android environment variables
INDERC=/Users/jcheung/.inderc
if [ -f /Users/jcheung/.inderc ]
then
    . /Users/jcheung/.inderc
fi
cowsay -f tux `fortune -s`
