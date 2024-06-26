# installer.sh (so that Docker, Singularity, or local install can call this)
#
# Circos installed in /opt, contain examples and tutorials.  
# xv graphics viewer included to see generated .png, doesn't work for .svg
# need to be at least 1200 MB 

 
# yum, but hoping rocky8 works with these packages


    yum -y install bash
    yum -y install wget
    yum -y install curl
    yum -y install tar              # circos extract
    yum -y install coreutils        # for convinience, provide yes
    yum -y install which            # for debugging use only, not req
    yum -y install vim
    yum -y install util-linux-ng    # u/mount, etc
    yum -y install gawk             # circos ./list.modules 
    yum -y install gcc              # some cpan modules need gcc (eg Clone)
    yum -y install gd
    #yum -y install eog             # throws DBus error :(
    yum -y install perl
    yum -y install perl-CPAN
    yum -y install perl-CPANPLUS
    yum -y install perl-GD          # no TTF support ??
    wget -nc https://raw.githubusercontent.com/tin6150/singhub/master/circos_perl_mod.sh
    bash circos_perl_mod.sh
    CIRCOS_DIR=/opt/circos
    CIRCOS_VER=0.69-6
    CIRCOS_TOOLS_VER=0.22
    CIRCOS_TUTORIAL_VER=0.69 # seems like last update id Jul 2019
    CIRCOS_SOURCE_FILE=circos-${CIRCOS_VER}
    CIRCOS_TOOLS_SOURCE_FILE=circos-tools-${CIRCOS_TOOLS_VER}
    CIRCOS_TUTORIAL_SOURCE_FILE=circos-tutorials-${CIRCOS_TUTORIAL_VER}
    test -d $CIRCOS_DIR || mkdir -p $CIRCOS_DIR
    cd $CIRCOS_DIR
    wget -nc "http://circos.ca/distribution/${CIRCOS_SOURCE_FILE}.tgz"
    wget -nc "http://circos.ca/distribution/${CIRCOS_TOOLS_SOURCE_FILE}.tgz"
    wget -nc "http://circos.ca/distribution/${CIRCOS_TUTORIAL_SOURCE_FILE}.tgz"
    tar xfz ${CIRCOS_SOURCE_FILE}.tgz
    tar xfz ${CIRCOS_TOOLS_SOURCE_FILE}.tgz
    tar xfz ${CIRCOS_TUTORIAL_SOURCE_FILE}.tgz
    touch       ${CIRCOS_SOURCE_FILE}/example/run.out 
    chmod 777   ${CIRCOS_SOURCE_FILE}/example/run.out 
    chmod -R a+w ${CIRCOS_TUTORIAL_SOURCE_FILE}/* 
    echo 'PATH=$PATH:'"${CIRCOS_DIR}/${CIRCOS_SOURCE_FILE}/bin;" 'export PATH' >> /etc/profile
    echo 'PATH=$PATH:'"${CIRCOS_DIR}/${CIRCOS_SOURCE_FILE}/bin;" 'export PATH' >> /etc/bashrc

    #~~yum -y install eog

    # optional XV graphics viewer - shareware (eog don't work due to DBus error)  docker can now do X...  fix tbd
    #xx XV_PKG_FILE=xv-3.10a-37.el6.x86_64.rpm
    #cd /tmp
    #wget ftp://fr2.rpmfind.net/linux/atrpms/el6-x86_64/atrpms/stable/${XV_PKG_FILE} 
    #rpm -i ${XV_PKG_FILE}
    #rm     ${XV_PKG_FILE}

