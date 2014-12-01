export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

setup_alias(){
    alias vmssh='ssh johnson@localhost -p 3222'
    #fonality alias
    alias umetk='ssh-add -e /usr/local/lib/libaetpkss.dylib'
    alias metk='ssh-add -s /usr/local/lib/libaetpkss.dylib'
    alias webdev2='ssh -A web-dev2.fonality.com'
    alias devbox5='ssh -A devbox5.lotsofclouds.fonality.com'
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
}


setup_alias

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!

source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

      
setup_path(){
    export ANDROID_NDK_ROOT=$HOME/android-ndk-r9d
    export ANDROID_HOME=$HOME/android-sdks

    export PATH=/Applications/PlasticSCM/client:$PATH
    export PATH=$HOME/Dev/tar-installs/vert.x-2.1.2/bin:$PATH
    export PATH=/Applications/PlasticSCM/server:$PATH
    #export PATH=/Applications/CouchbaseServer.app/Contents/Resources/couchbase-core/bin:$PATH
    export PATH=$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH
    export PATH=$PATH:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools:$HOME/android-ndk-r9d:
    export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS
    export FON_DIR=$HOME/vagrant_dir/fcs
}

setup_path

